# 🚀 OpenCode SDD Starter

Template profissional para iniciar projetos com **OpenCode** + **OpenSpec**.

> **Spec-Driven Development** com IA para melhorar qualidade, velocidade e documentação.

## 🎯 O que é isso?

Repositório template com:
- ✅ **24 Agents Especializados** - IA para cada função
- ✅ **45+ Skills** - Conhecimento em múltiplos domínios
- ✅ **13 Workflows** - Automações prontas
- ✅ **OpenSpec Configurado** - Pronto para Spec-Driven Development
- ✅ **Exemplos** - 2 specs de exemplo

**Resultado:** Um novo projeto começa com sua estrutura profissional completa.

---

## 🚀 Como começar

### Opção 1: GitHub Template (Recomendado) ⭐

1. Acesse: https://github.com/yurilq/opencode-sdd-starter
2. Clique: **"Use this template"**
3. Escolha o nome do seu projeto
4. GitHub cria um novo repositório com a estrutura
5. Clone em sua máquina:
   ```bash
   git clone https://github.com/SEU_USER/SEU_PROJETO.git
   cd SEU_PROJETO
   ```
6. Execute o setup:
   ```bash
   # Windows (PowerShell)
   .\scripts\setup-workspace.ps1

   # macOS/Linux (Bash)
   ./scripts/setup-workspace.sh
   ```

### Opção 2: Clone Manual

```bash
git clone https://github.com/yurilq/opencode-sdd-starter.git meu-novo-projeto
cd meu-novo-projeto

# Windows (PowerShell)
.\scripts\setup-workspace.ps1

# macOS/Linux (Bash)
./scripts/setup-workspace.sh
```

---

## ✨ O que o setup faz?

O script `setup-workspace.ps1` ou `setup-workspace.sh`:

1. ✅ Valida Node.js + npm
2. ✅ Copia `.opencode/` com todos os agents, skills e workflows
3. ✅ Copia `openspec/` com config base e exemplos
4. ✅ Instala `opencode-ai` via npm
5. ✅ Cria `package.json` se não existir
6. ✅ Inicializa Git com primeiro commit
7. ✅ Limpa estrutura de template

**Tempo total:** ~2 minutos ⚡

---

## 📊 O que você ganha

### 24 Agents Especializados

Cada um com expertise própria:

| Categoria | Agents |
|-----------|--------|
| **Frontend** | frontend-specialist |
| **Backend** | backend-specialist, nodejs-best-practices |
| **Database** | database-architect |
| **Mobile** | mobile-developer |
| **DevOps** | devops-engineer |
| **Security** | security-auditor, penetration-tester |
| **Testing** | test-engineer, qa-automation-engineer |
| **Debugging** | debugger, code-archaeologist |
| **Performance** | performance-optimizer |
| **Game Dev** | game-developer |
| **E muito mais...** | 8 agents adicionais |

### 45+ Skills Estruturados

Conhecimento em múltiplos domínios:

**Frontend & UI:**
- nextjs-react-expert
- tailwind-patterns
- frontend-design
- web-design-guidelines

**Backend & API:**
- api-patterns
- nodejs-best-practices
- python-patterns
- rust-pro

**Database:**
- database-design

**DevOps:**
- deployment-procedures
- server-management

**Testing:**
- testing-patterns
- tdd-workflow
- webapp-testing

**E muito mais:**
- mobile-design
- game-development (10 sub-skills)
- security e performance
- architecture e planning

### 13 Workflows Prontos

Slash commands para automatizar tarefas:

```
/brainstorm  - Brainstorm de ideias
/plan        - Planejar features
/create      - Criar novo código
/debug       - Debugar problemas
/test        - Executar testes
/deploy      - Deploy em produção
/coordinate  - Coordenar múltiplos agentes
/enhance     - Melhorias incrementais
/verify      - Verificar implementação
/preview     - Preview antes de merge
/remember    - Guardar contexto
/status      - Status do projeto
/orchestrate - Orquestrar tarefas complexas
```

---

## 🛠️ Estrutura do Projeto

Após setup, seu projeto tem:

```
meu-novo-projeto/
│
├── .opencode/                      # Configuração OpenCode
│   ├── agents/ (24 arquivos)       # Agents especializados
│   ├── skills/                     # OpenSpec skills
│   │   ├── openspec-propose/
│   │   ├── openspec-apply-change/
│   │   ├── openspec-explore/
│   │   ├── openspec-archive-change/
│   │   └── openspec-sync-specs/
│   ├── workflows/ (13 arquivos)    # Slash commands
│   ├── rules/                      # Regras customizadas
│   │   └── GEMINI.md
│   ├── memory/                     # Convenções do projeto
│   │   ├── MEMORY.md
│   │   └── project-conventions.md
│   ├── ARCHITECTURE.md             # Docs dos agents/skills
│   ├── package.json
│   └── mcp_config.json
│
├── openspec/                       # Spec-Driven Development
│   ├── config.yaml                 # Configuração OpenSpec
│   ├── specs/
│   │   ├── exemplo-feature-simples.md
│   │   └── exemplo-refactoring.md
│   └── changes/
│       └── archive/
│
├── package.json                    # Seu projeto
├── .gitignore
└── README-NOVO-PROJETO.md          # Guide para novo dev
```

---

## 🎯 Como usar OpenSpec?

### 1. Propor uma Feature

```bash
opencode
# Digite: /openspec-propose
```

Isso:
- ✅ Propõe a feature
- ✅ Cria um plano detalhado
- ✅ Gera tarefas específicas
- ✅ Estima esforço

### 2. Explorar a Spec

```bash
# Digite: /openspec-explore
```

- Analisa a spec em detalhes
- Faz perguntas esclarecedoras
- Valida completude

### 3. Aplicar Mudanças

```bash
# Digite: /openspec-apply-change
```

- Implementa conforme a spec
- Segue as tarefas
- Atualiza conforme progresso

### 4. Arquivar Spec Concluída

```bash
# Digite: /openspec-archive-change
```

- Marca como concluída
- Move para histórico
- Mantém rastreabilidade

---

## 📚 Exemplos Inclusos

### Exemplo 1: Feature Simples

**Arquivo:** `openspec/specs/exemplo-feature-simples.md`

- Feature: Autenticação OAuth2 (Google + GitHub)
- Tamanho: ~19 horas
- Complexidade: Média

**O que contém:**
- Proposta clara
- Contexto técnico
- Tarefas decompostas
- Critérios de aceitação
- Riscos e mitigações

### Exemplo 2: Refactoring

**Arquivo:** `openspec/specs/exemplo-refactoring.md`

- Refactoring: Consolidar componentes Button
- Tamanho: ~12 horas
- Complexidade: Média

**O que contém:**
- Análise de code duplication
- Plano de migração
- Validações
- Dependências mapeadas

---

## 🔧 Customização

### Adicionar seus Agents

```bash
.opencode/agents/seu-agent.md
```

Estrutura básica:
```markdown
# Agent: Seu Agent

Description: ...

When to use:
- Situação 1
- Situação 2

System Prompt:
You are...
```

### Adicionar Skills

```bash
.opencode/skills/sua-skill/SKILL.md
```

### Customizar Convenções

Edite: `.opencode/memory/project-conventions.md`

```markdown
# Project Conventions

## Git Workflow
- Branch format: feature/[slug]

## Naming
- Components: PascalCase
- Functions: camelCase

## Testing
- Coverage mínima: 80%
```

---

## 🚨 Troubleshooting

### "Setup não funciona no PowerShell"

**Solução:** Verifique permissões de execução:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\scripts\setup-workspace.ps1
```

### "OpenCode não inicia"

**Solução:** Instale manualmente:
```bash
npm install opencode-ai --save-dev
opencode
```

### "Falta Node.js"

**Solução:** Instale em https://nodejs.org/

Recomendado: LTS (versão par)

### ".opencode já existe"

**Normal!** Se executar setup 2x, script pula cópia.

Para reconfigura:
```bash
rm -rf .opencode
./scripts/setup-workspace.ps1  # ou .sh
```

---

## 📖 Documentação

- **Este arquivo:** README-PT.md (guia completo)
- **Quick start:** QUICKSTART-PT.md (3 passos)
- **Arquitetura:** `.opencode/ARCHITECTURE.md`
- **Novo dev:** `README-NOVO-PROJETO.md`
- **Estrutura:** `STRUCTURE.md`

---

## 🔗 Links Úteis

- [OpenCode Docs](https://opencode.ai/docs)
- [OpenSpec Docs](https://opencode.ai/docs/openspec)
- [GitHub - OpenCode](https://github.com/anomalyco/opencode)
- [GitHub - Este Template](https://github.com/yurilq/opencode-sdd-starter)

---

## 📝 Licença

MIT License - Use livremente!

---

## 🤝 Contribuindo

Este é um template profissional. Para sugestões:

1. Crie uma issue
2. Descreva melhorias
3. Faça um PR

---

## ⚡ Quick Commands

```bash
# Iniciar OpenCode
opencode

# Ver agents disponíveis
opencode --list-agents

# Ver skills disponíveis
opencode --list-skills

# Propor nova spec
/openspec-propose

# Explorar repo (rápido)
/openspec-explore

# Aplicar mudanças
/openspec-apply-change

# Arquivar spec
/openspec-archive-change
```

---

## 🎉 Pronto para começar?

```bash
# 1. Clone ou use template
git clone https://github.com/yurilq/opencode-sdd-starter.git

# 2. Execute setup
./scripts/setup-workspace.ps1  # ou .sh

# 3. Inicie OpenCode
opencode

# 4. Propor uma feature
/openspec-propose
```

**Happy coding! 🚀**
