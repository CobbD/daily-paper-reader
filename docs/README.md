<div class="dpr-home-notice-card">
  <h3 class="dpr-home-notice-title">🚀 Start Here</h3>
  <ul class="dpr-home-notice-list">
    <li><a href="#/tutorial/README">使用教程</a></li>
  </ul>
</div>

## 每次日报
- 最新运行日期：2026-07-20
- 运行时间：2026-07-20 06:06:08 UTC
- 运行状态：成功
- 本次总论文数：24
- 精读区：17
- 速读区：7

### 今日简报（AI）
今日聚焦大模型安全攻防：从多轮越狱新法（MJ）到代理系统自动对齐审计（ANCHOR），高精度揭示前沿脆弱性。  
最值得关注的是 MJ 如何通过分解信用分配突破多轮对话防线，以及 ANCHOR 对真实 CLI 代理危害的自动化审计能力。  
建议安全从业者重点追踪越狱手法的进化与代理系统的韧性评估，将论文中的攻击思路转化为防御策略。
- 详情：[/202607/20/README](/202607/20/README)

### 精读区论文标签
1. [MJ: Multi-turn LLM Jailbreaking via Decomposed Credit Assignment](/202607/20/2607.11070v1-mj-multi-turn-llm-jailbreaking-via-decomposed-credit-assignment)  
   标签：评分：10.0/10、query:llm-security
   evidence：通过分解信用分配的多轮越狱攻击学习用于红队测试
2. [ANCHOR: Automated Alignment Auditing for CLI Agents on Real-World Harm](/202607/20/2607.10455v1-anchor-automated-alignment-auditing-for-cli-agents-on-real-world-harm)  
   标签：评分：9.0/10、query:agent-security
   evidence：自动审计框架对CLI代理进行非法有害任务的应急测试
3. [Can Watermarking Techniques Help Prevent LLM Model Stealing?](/202607/20/2607.10794v1-can-watermarking-techniques-help-prevent-llm-model-stealing)  
   标签：评分：9.0/10、query:llm-security
   evidence：提出受水印启发的防御方法，抵御LLM模型窃取攻击
4. [Privacy Leakage in Federated Learning in Radiology Reports: A Comparative Evaluation of Tokenizer-Driven Privacy Risks](/202607/20/2607.14205v1-privacy-leakage-in-federated-learning-in-radiology-reports-a-comparative-evaluation-of-tokenizer-driven-privacy-risks)  
   标签：评分：9.0/10、query:fl-security
   evidence：针对联邦学习临床文本训练的梯度反转攻击
5. [Automatic Hard Example Synthesis with Multi-Level Agentic Data Curation](/202607/20/2607.14256v1-automatic-hard-example-synthesis-with-multi-level-agentic-data-curation)  
   标签：评分：9.0/10、query:llm-security
   evidence：面向多模态大模型内容安全的智能红队自动化框架
6. [Context Contamination in LLM Analysis of Network Security Logs: Poison with Passive Prompt Injection and Mitigation Evaluation](/202607/20/2607.14493v1-context-contamination-in-llm-analysis-of-network-security-logs-poison-with-passive-prompt-injection-and-mitigation-evaluation)  
   标签：评分：9.0/10、query:llm-security
   evidence：针对LLM安全日志分析的被动提示注入攻击
7. [Bad Memory: Evaluating Prompt Injection Risks from Memory in Agentic Systems](/202607/20/2607.14611v1-bad-memory-evaluating-prompt-injection-risks-from-memory-in-agentic-systems)  
   标签：评分：9.0/10、query:agent-security
   evidence：研究基于内存文件的提示注入攻击，使用沙盒环境评估LLM智能体。
8. [MemPoison: Uncovering Persistent Memory Threats and Structural Blind Spots in LLM Agents](/202607/20/2607.14651v1-mempoison-uncovering-persistent-memory-threats-and-structural-blind-spots-in-llm-agents)  
   标签：评分：9.0/10、query:agent-security
   evidence：针对LLM智能体中通过对抗内容注入进行持久内存攻击的基准测试
9. [Is External Database Protection Static in Retrieval-Augmented Generation? Rethinking Privacy Preservation under Dynamic Queries](/202607/20/2607.14811v1-is-external-database-protection-static-in-retrieval-augmented-generation-rethinking-privacy-preservation-under-dynamic-queries)  
   标签：评分：9.0/10、query:llm-security
   evidence：面向RAG的动态差分隐私，保护查询相关风险下的敏感信息泄露
10. [NFSA: Non-Forward Secure Aggregation with One Server via Two Layer Secret Sharing](/202607/20/2607.15052v1-nfsa-non-forward-secure-aggregation-with-one-server-via-two-layer-secret-sharing)  
   标签：评分：9.0/10、query:fl-security
   evidence：基于两层秘密共享的联邦学习非前向安全聚合
11. [DataShield: Uncovering Risky Fine-Tuning Data Across LLMs Through Consensus Subspace Alignment](/202607/20/2607.15081v1-datashield-uncovering-risky-fine-tuning-data-across-llms-through-consensus-subspace-alignment)  
   标签：评分：9.0/10、query:llm-security
   evidence：识别削弱LLM安全性的微调数据
12. [When Words Are Safe But Actions Kill: Probing Physical Danger Beyond Text Safety in Hidden-State Risk Space](/202607/20/2607.15218v1-when-words-are-safe-but-actions-kill-probing-physical-danger-beyond-text-safety-in-hidden-state-risk-space)  
   标签：评分：9.0/10、query:agent-security
   evidence：探测基于LLM的具身智能体中的物理危险，揭示可分离的风险信号
13. [FLINT: Fingerprinting Federated Learning Architectures from 5G PHY-Layer Side Channels](/202607/20/2607.15469v1-flint-fingerprinting-federated-learning-architectures-from-5g-phy-layer-side-channels)  
   标签：评分：9.0/10、query:fl-security
   evidence：通过侧信道攻击指纹识别联邦学习架构
14. [From Neural Intent to Cryptographic Authorization: Governing Agentic Workflows](/202607/20/2607.15596v1-from-neural-intent-to-cryptographic-authorization-governing-agentic-workflows)  
   标签：评分：9.0/10、query:agent-security
   evidence：通过神经符号密码授权防止LLM代理被提示注入劫持
15. [Do Agents Dream of False Memories? Black-box Visual Attacks on Long-term Memory in Multimodal AI Agents](/202607/20/2607.15657v1-do-agents-dream-of-false-memories-black-box-visual-attacks-on-long-term-memory-in-multimodal-ai-agents)  
   标签：评分：9.0/10、query:agent-security
   evidence：提出Lucid，一种针对多模态AI代理长期记忆的黑盒视觉攻击框架
16. [The Language of Security: How Prompt Syntax Shapes Secure Code Generation in Open LLMs](/202607/20/2607.15937v1-the-language-of-security-how-prompt-syntax-shapes-secure-code-generation-in-open-llms)  
   标签：评分：9.0/10、query:llm-security
   evidence：提示中的细粒度语法变化影响LLM生成代码的安全性
17. [Code-Poisoning Property Inference Attacks](/202607/20/2607.15970v1-code-poisoning-property-inference-attacks)  
   标签：评分：9.0/10、query:agent-security
   evidence：通过恶意代码提供者针对机器学习模型的代码级属性推断攻击

### 速读区论文标签
1. [Silent Alarm: A J-Space Protocol for Comparing Danger Recognition Across Models and Quantization Levels](/202607/20/2607.12792v1-silent-alarm-a-j-space-protocol-for-comparing-danger-recognition-across-models-and-quantization-levels)  
   标签：评分：8.0/10、query:llm-security
   evidence：在生成响应前通过内部表征评估越狱鲁棒性
2. [Refusal is Not Safety! Benchmarking Latent Safety Risks of LLM-Driven Content Humorization](/202607/20/2607.15977v1-refusal-is-not-safety-benchmarking-latent-safety-risks-of-llm-driven-content-humorization)  
   标签：评分：8.0/10、query:llm-security
   evidence：评估将幽默作为越狱防御机制的潜在安全风险
3. [The Honest Quorum Problem: Epistemic Byzantine Fault Tolerance for Agentic Infrastructure](/202607/20/2607.16109v1-the-honest-quorum-problem-epistemic-byzantine-fault-tolerance-for-agentic-infrastructure)  
   标签：评分：8.0/10、query:agent-security
   evidence：智能拜占庭容错中的认知故障
4. [UTS at ELOQUENT 2026 Voight-Kampff: structural shifts in AI writing bypass state-of-the-art detectors](/202607/20/2607.13565v1-uts-at-eloquent-2026-voight-kampff-structural-shifts-in-ai-writing-bypass-state-of-the-art-detectors)  
   标签：评分：7.0/10、query:llm-security
   evidence：通过生成文本的分布外结构性转变开发大语言模型规避攻击，绕过最先进的检测器
5. [Traccia: An OpenTelemetry-Based Governance Platform for AI Systems](/202607/20/2607.14309v1-traccia-an-opentelemetry-based-governance-platform-for-ai-systems)  
   标签：评分：7.0/10、query:agent-security
   evidence：针对AI代理的治理平台，解决对齐漂移和SaaS安全等威胁
6. [Transcoders for Investigating Deception in Language Models](/202607/20/2607.14791v1-transcoders-for-investigating-deception-in-language-models)  
   标签：评分：7.0/10、query:llm-security
   evidence：利用转码器对语言模型的欺骗行为进行机制可解释性分析，支持安全对齐
7. [Stability Buys Time: A Re-Keying Game for Encrypted Multi-Agent Control](/202607/20/2607.12742v1-stability-buys-time-a-re-keying-game-for-encrypted-multi-agent-control)  
   标签：评分：6.0/10、query:agent-security
   evidence：使用全同态加密实现多智能体控制的隐私保护，并通过重新加密博弈应对密钥恢复泄露


<div class="dpr-home-promo-card">
  <h3 class="dpr-home-promo-title">💬 社区与支持</h3>
  <ul class="dpr-home-promo-list">
    <li>欢迎 Star / Fork / Issue / PR</li>
    <li>QQ群：583867967（欢迎交流，已有：1151人）</li>
  </ul>
</div>
