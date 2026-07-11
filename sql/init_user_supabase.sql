-- ============================================================
-- Daily Paper Reader - Supabase 初始化脚本
-- 在 Supabase SQL Editor 中一次性运行
-- ============================================================

-- 1. 启用 pgvector 扩展
create extension if not exists vector;

-- 2. 创建 arxiv_papers 主表
create table if not exists public.arxiv_papers (
  id text primary key,
  source text not null default 'arxiv',
  source_paper_id text,
  doi text,
  version text,
  title text not null,
  abstract text,
  authors jsonb not null default '[]'::jsonb,
  primary_category text,
  categories jsonb not null default '[]'::jsonb,
  published timestamptz,
  link text,
  pdf_url text,
  embedding vector(384),
  embedding_model text,
  embedding_dim int,
  embedding_updated_at timestamptz,
  updated_at timestamptz not null default now()
);

-- 3. 创建 arxiv_sync_status 表
create table if not exists public.arxiv_sync_status (
  id text primary key,
  status text,
  updated_at timestamptz not null default now()
);

-- 4. 索引
create index if not exists arxiv_papers_source_published_idx
  on public.arxiv_papers (source, published desc);

create index if not exists arxiv_papers_published_idx
  on public.arxiv_papers (published desc);

create index if not exists arxiv_papers_title_abstract_fts_idx
  on public.arxiv_papers
  using gin (to_tsvector('english', coalesce(title, '') || ' ' || coalesce(abstract, '')));

create index if not exists arxiv_papers_embedding_hnsw_idx
  on public.arxiv_papers
  using hnsw (embedding vector_cosine_ops);

-- 5. 精确向量检索 RPC
CREATE OR REPLACE FUNCTION match_arxiv_papers_exact(
  query_embedding vector,
  match_count     int,
  filter_published_start timestamptz DEFAULT NULL,
  filter_published_end   timestamptz DEFAULT NULL
)
RETURNS TABLE (
  id                text,
  title             text,
  abstract          text,
  authors           jsonb,
  primary_category  text,
  categories        jsonb,
  published         timestamptz,
  link              text,
  pdf_url           text,
  source            text,
  similarity        float8
)
LANGUAGE sql STABLE
AS $$
  SELECT
    p.id,
    p.title,
    p.abstract,
    p.authors,
    p.primary_category,
    p.categories,
    p.published,
    p.link,
    p.pdf_url,
    p.source,
    1 - (p.embedding <=> query_embedding) AS similarity
  FROM arxiv_papers p
  WHERE p.embedding IS NOT NULL
    AND (filter_published_start IS NULL OR p.published >= filter_published_start)
    AND (filter_published_end   IS NULL OR p.published <  filter_published_end)
  ORDER BY p.embedding <=> query_embedding
  LIMIT match_count;
$$;

-- 6. ANN 向量检索 RPC
CREATE OR REPLACE FUNCTION match_arxiv_papers(
  query_embedding vector,
  match_count     int,
  filter_published_start timestamptz DEFAULT NULL,
  filter_published_end   timestamptz DEFAULT NULL
)
RETURNS TABLE (
  id                text,
  title             text,
  abstract          text,
  authors           jsonb,
  primary_category  text,
  categories        jsonb,
  published         timestamptz,
  link              text,
  pdf_url           text,
  source            text,
  similarity        float8
)
LANGUAGE sql STABLE
AS $$
  SELECT
    p.id,
    p.title,
    p.abstract,
    p.authors,
    p.primary_category,
    p.categories,
    p.published,
    p.link,
    p.pdf_url,
    p.source,
    1 - (p.embedding <=> query_embedding) AS similarity
  FROM arxiv_papers p
  WHERE p.embedding IS NOT NULL
    AND (filter_published_start IS NULL OR p.published >= filter_published_start)
    AND (filter_published_end   IS NULL OR p.published <  filter_published_end)
  ORDER BY p.embedding <=> query_embedding
  LIMIT match_count;
$$;

-- 7. BM25 全文检索 RPC
CREATE OR REPLACE FUNCTION match_arxiv_papers_bm25(
  query_text      text,
  match_count     int,
  filter_published_start timestamptz DEFAULT NULL,
  filter_published_end   timestamptz DEFAULT NULL
)
RETURNS TABLE (
  id                text,
  title             text,
  abstract          text,
  authors           jsonb,
  primary_category  text,
  categories        jsonb,
  published         timestamptz,
  link              text,
  pdf_url           text,
  source            text,
  similarity        float8,
  score             float8
)
LANGUAGE sql STABLE
AS $$
  SELECT
    p.id,
    p.title,
    p.abstract,
    p.authors,
    p.primary_category,
    p.categories,
    p.published,
    p.link,
    p.pdf_url,
    p.source,
    0::float8 AS similarity,
    ts_rank_cd(
      to_tsvector('english', coalesce(p.title, '') || ' ' || coalesce(p.abstract, '')),
      plainto_tsquery('english', query_text)
    ) AS score
  FROM arxiv_papers p
  WHERE to_tsvector('english', coalesce(p.title, '') || ' ' || coalesce(p.abstract, ''))
        @@ plainto_tsquery('english', query_text)
    AND (filter_published_start IS NULL OR p.published >= filter_published_start)
    AND (filter_published_end   IS NULL OR p.published <  filter_published_end)
  ORDER BY score DESC
  LIMIT match_count;
$$;
