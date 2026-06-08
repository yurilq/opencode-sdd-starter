# 🚀 OpenCode SDD Starter

**Template profissional** para iniciar projetos com OpenCode + OpenSpec (Spec-Driven Development)

[📖 Português](#português) | [📖 English](#english)

---

<a name="português"></a>

## 🇧🇷 Português

### 🎯 Comece em 3 passos

```bash
# 1. Clone o template em uma pasta temporária
git clone https://github.com/yurilq/opencode-sdd-starter.git opencode-template

# 2. Execute o setup a partir do SEU PROJETO
# O script copiará .opencode/, openspec/ e configurações para seu projeto
./opencode-template/scripts/setup-workspace.ps1  # Windows PowerShell
./opencode-template/scripts/setup-workspace.sh   # macOS/Linux

# 3. Inicie OpenCode
opencode
```

### ℹ️ Como funciona

O template é **instalado em seu projeto existente**, não o contrário:

```
seu-projeto/                    (seu projeto atual)
├── seu-codigo/
├── .env
└── opencode-template/          (clone do template - será removido)
    └── scripts/
        └── setup-workspace.ps1

Após executar setup:

seu-projeto/
├── seu-codigo/
├── .env
├── .opencode/                  (copiado do template)
├── openspec/                   (copiado do template)
├── package.json                (atualizado com opencode-ai)
└── node_modules/               (opencode-ai instalado)
```

### ✨ O que você ganha

- **29 Agents Especializados** - IA para cada função (Frontend, Backend, Mobile, DevOps, etc)
- **45+ Skills** - Conhecimento em múltiplos domínios
- **13 Workflows Prontos** - Automações com slash commands
- **OpenSpec Configurado** - Pronto para Spec-Driven Development
- **2 Exemplos** - Specs completas para aprender

### 📚 Documentação

- **[QUICKSTART-PT.md](QUICKSTART-PT.md)** - 3 passos rápidos ⚡
- **[README-PT.md](README-PT.md)** - Guia completo 📖
- **[STRUCTURE.md](STRUCTURE.md)** - Arquitetura do template
- **[TROUBLESHOOTING.md](TROUBLESHOOTING.md)** - FAQ

### 🚀 Primeiros Comandos

```bash
# Abrir OpenCode
opencode

# Propor uma nova feature com spec
/openspec-propose

# Explorar a spec detalhadamente
/openspec-explore

# Aplicar as mudanças
/openspec-apply-change

# Arquivar spec concluída
/openspec-archive-change
```

### 📂 Estrutura

```
meu-projeto/
├── .opencode/
│   ├── agents/          (29 agents especializados)
│   ├── skills/          (OpenSpec skills)
│   ├── workflows/       (13 slash commands)
│   ├── rules/           (Regras customizadas)
│   └── memory/          (Convenções do projeto)
├── openspec/
│   ├── config.yaml
│   ├── specs/           (Suas especificações)
│   └── changes/         (Histórico)
└── package.json
```

---

<a name="english"></a>

## 🇺🇸 English

### 🎯 Get started in 3 steps

```bash
# 1. Clone the template in a temporary folder
git clone https://github.com/yurilq/opencode-sdd-starter.git opencode-template

# 2. Run setup FROM YOUR PROJECT
# The script will copy .opencode/, openspec/ and configs to your project
./opencode-template/scripts/setup-workspace.ps1  # Windows PowerShell
./opencode-template/scripts/setup-workspace.sh   # macOS/Linux

# 3. Start OpenCode
opencode
```

### ℹ️ How it works

The template is **installed into your existing project**, not the other way around:

```
your-project/                   (your current project)
├── your-code/
├── .env
└── opencode-template/          (template clone - will be removed)
    └── scripts/
        └── setup-workspace.ps1

After running setup:

your-project/
├── your-code/
├── .env
├── .opencode/                  (copied from template)
├── openspec/                   (copied from template)
├── package.json                (updated with opencode-ai)
└── node_modules/               (opencode-ai installed)
```

### ✨ What you get

- **29 Specialized Agents** - AI for every role (Frontend, Backend, Mobile, DevOps, etc)
- **45+ Skills** - Knowledge across multiple domains
- **13 Ready Workflows** - Automations with slash commands
- **OpenSpec Configured** - Ready for Spec-Driven Development
- **2 Examples** - Complete specs to learn from

### 📚 Documentation

- **[QUICKSTART-EN.md](QUICKSTART-EN.md)** - 3 quick steps ⚡
- **[README-EN.md](README-EN.md)** - Complete guide 📖
- **[STRUCTURE.md](STRUCTURE.md)** - Template architecture
- **[TROUBLESHOOTING.md](TROUBLESHOOTING.md)** - FAQ

### 🚀 First Commands

```bash
# Open OpenCode
opencode

# Propose a new feature with spec
/openspec-propose

# Explore the spec in detail
/openspec-explore

# Apply the changes
/openspec-apply-change

# Archive completed spec
/openspec-archive-change
```

### 📂 Structure

```
my-project/
├── .opencode/
│   ├── agents/          (29 specialized agents)
│   ├── skills/          (OpenSpec skills)
│   ├── workflows/       (13 slash commands)
│   ├── rules/           (Custom rules)
│   └── memory/          (Project conventions)
├── openspec/
│   ├── config.yaml
│   ├── specs/           (Your specifications)
│   └── changes/         (History)
└── package.json
```

---

## 🔗 Links

- [OpenCode Documentation](https://opencode.ai/docs)
- [GitHub - OpenCode](https://github.com/anomalyco/opencode)
- [This Template](https://github.com/yurilq/opencode-sdd-starter)

---

## 📝 License

MIT - Use freely!

---

## 🎯 Ready?

**Portuguese:** Acesse [README-PT.md](README-PT.md)

**English:** Go to [README-EN.md](README-EN.md)

Happy coding! 🚀
