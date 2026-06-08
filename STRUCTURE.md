# 📐 Arquitetura do OpenCode SDD Starter

Documentação completa da estrutura deste template.

---

## 📁 Estrutura de Pastas

```
opencode-sdd-starter/
│
├── 📁 template/                            ← Copiado para novo projeto
│   ├── .opencode/
│   │   ├── agents/                         (24 agents especializados)
│   │   ├── skills/                         (5 OpenSpec skills)
│   │   ├── workflows/                      (13 slash commands)
│   │   ├── rules/                          (Regras customizadas)
│   │   ├── memory/                         (Convenções do projeto)
│   │   ├── ARCHITECTURE.md                 (Docs dos agents)
│   │   ├── package.json
│   │   └── mcp_config.json
│   │
│   ├── openspec/
│   │   ├── config.yaml                     (Config OpenSpec)
│   │   ├── specs/                          (2 exemplos inclusos)
│   │   └── changes/
│   │       └── archive/
│   │
│   ├── .github/
│   │   └── workflows/                      (CI/CD templates)
│   │
│   ├── .gitignore                          (Ignores padrão)
│   ├── package.json                        (Base do projeto)
│   └── README-NOVO-PROJETO.md              (Guide para novo dev)
│
├── 📁 scripts/                             ← NÃO copiados
│   ├── setup-workspace.ps1                 (Setup PowerShell)
│   └── setup-workspace.sh                  (Setup Bash)
│
├── 📄 README.md                            (Entry point PT/EN)
├── 📄 README-PT.md                         (Guia completo PT)
├── 📄 README-EN.md                         (Guia completo EN)
├── 📄 QUICKSTART-PT.md                     (3 passos PT)
├── 📄 QUICKSTART-EN.md                     (3 passos EN)
├── 📄 STRUCTURE.md                         (Este arquivo)
├── 📄 TROUBLESHOOTING.md                   (FAQ)
├── 📄 LICENSE                              (MIT)
├── 📄 .gitattributes                       (Git config)
└── 📄 CHANGELOG.md                         (Histórico)
```

---

## 📊 O Que Cada Pasta Contém

### `template/.opencode/`

**Copiada para novo projeto.**

#### `agents/` (24 agents)

Agents especializados em diferentes domínios:

```
agents/
├── frontend-specialist.md          (React, Vue, Angular, UI/UX)
├── backend-specialist.md           (Node.js, APIs, servidor)
├── mobile-developer.md             (React Native, Flutter)
├── database-architect.md           (Schema, SQL, ORM)
├── devops-engineer.md              (Docker, CI/CD, deploy)
├── security-auditor.md             (Segurança, compliance)
├── penetration-tester.md           (Testes ofensivos)
├── test-engineer.md                (Testes, QA)
├── debugger.md                     (Debug sistemático)
├── performance-optimizer.md        (Performance, Core Web Vitals)
├── game-developer.md               (Game dev)
├── project-planner.md              (Planejamento)
├── product-manager.md              (Requisitos, user stories)
├── orchestrator.md                 (Multi-agent coordination)
├── seo-specialist.md               (SEO, GEO)
├── code-archaeologist.md           (Legacy code, refactor)
├── documentation-writer.md         (Docs)
├── explorer-agent.md               (Análise codebase)
├── (5 agents adicionais)
└── ...
```

**Como usar:**

No OpenCode, digite `@` para ver sugestões de agents:
```
@frontend-specialist Crie um componente Button reutilizável
```

#### `skills/` (5 OpenSpec skills)

Skills específicas para Spec-Driven Development:

```
skills/
├── openspec-propose/              (Propor nova feature)
├── openspec-explore/              (Explorar spec)
├── openspec-apply-change/         (Aplicar mudanças)
├── openspec-archive-change/       (Arquivar spec)
└── openspec-sync-specs/           (Sincronizar specs)
```

**Como usar:**

No OpenCode, use slash commands:
```
/openspec-propose
/openspec-explore
/openspec-apply-change
/openspec-archive-change
/openspec-sync-specs
```

#### `workflows/` (13 workflows)

Automações prontas com slash commands:

```
workflows/
├── brainstorm.md                  (Brainstorm de ideias)
├── plan.md                        (Planejar features)
├── create.md                      (Criar novo código)
├── debug.md                       (Debugar problemas)
├── test.md                        (Executar testes)
├── deploy.md                      (Deploy produção)
├── coordinate.md                  (Coordenar agentes)
├── enhance.md                     (Melhorias incrementais)
├── verify.md                      (Verificar implementação)
├── preview.md                     (Preview antes de merge)
├── remember.md                    (Guardar contexto)
├── status.md                      (Status do projeto)
└── orchestrate.md                 (Orquestrar tarefas)
```

#### `rules/` (1 arquivo)

Regras customizadas:

```
rules/
└── GEMINI.md                      (Regras padrão Gemini)
```

Crie seus próprios `.md` files nesta pasta para adicionar regras customizadas.

#### `memory/` (2 arquivos)

Sistema de memória do projeto:

```
memory/
├── MEMORY.md                      (Índice de memória)
└── project-conventions.md         (Convenções do projeto)
```

Edite `project-conventions.md` para customizar para seu projeto:

```markdown
# Project Conventions

## Git Workflow
- Formato: feature/[slug], fix/[bug-slug]
- 1 branch por feature

## Naming
- Components: PascalCase
- Functions: camelCase
- Constants: UPPER_SNAKE_CASE

## Testing
- Cobertura mínima: 80%
- Jest para unit tests
- Playwright para E2E
```

### `template/openspec/`

**Copiada para novo projeto.**

#### `config.yaml`

Configuração do OpenSpec:

```yaml
schema: spec-driven

# Contexto do projeto (mostrado ao criar specs)
context: |
  Tech stack: TypeScript, React, Node.js
  Conventions: Conventional commits
  Domain: Seu domínio de negócio

# Regras por artefato
rules:
  proposal:
    - Keep proposals under 500 words
    - Always include Non-goals section
  tasks:
    - Break into chunks of max 2 hours
```

#### `specs/`

Suas especificações de features:

```
specs/
├── exemplo-feature-simples.md     (OAuth2 authentication)
├── exemplo-refactoring.md        (Button component refactor)
├── [suas specs...]
└── [mais specs...]
```

Cada spec é um arquivo Markdown com:
- Proposta
- Contexto
- Objetivos
- Não-objetivos
- Tarefas
- Critérios de aceitação
- Estimativas
- Dependências
- Riscos

#### `changes/`

Histórico de mudanças:

```
changes/
└── archive/                       (Mudanças concluídas)
    ├── 2026-05-15-feature-1.md
    ├── 2026-05-20-refactor-2.md
    └── ...
```

Quando você arquiva uma spec com `/openspec-archive-change`, ela move para `archive/`.

### `scripts/` (NÃO copiado)

Scripts de setup (removidos após execução):

```
scripts/
├── setup-workspace.ps1            (Setup PowerShell)
└── setup-workspace.sh             (Setup Bash)
```

Estes scripts:
1. Validam Node.js + npm
2. Copiam `template/` para o projeto
3. Instalam `opencode-ai`
4. Inicializam Git
5. Se removem a si mesmos

---

## 🔄 O Fluxo de Setup

Quando um novo dev executa `./scripts/setup-workspace.ps1`:

```
1. Validação
   ├── Node.js encontrado? ✅
   ├── npm encontrado? ✅
   └── Estrutura template válida? ✅

2. Cópia
   ├── Copia template/.opencode → .opencode
   └── Copia template/openspec → openspec

3. Instalação
   └── npm install opencode-ai --save-dev

4. Limpeza
   ├── Remove pasta scripts/
   └── Cria .gitignore (se não existir)

5. Git (opcional)
   └── git init + primeiro commit

Resultado: Projeto pronto com configuração completa!
```

---

## 🎯 Por Que Essa Estrutura?

### `template/` (Separado)

Deixa claro o que será copiado vs. scripts de setup.

### `.opencode/agents/` (24 files)

Cada agent em seu próprio arquivo para fácil edição.

### `openspec/` (Estrutura)

Suporta:
- Multiple specs (`specs/`)
- Histórico (`changes/archive/`)
- Configuração centralizada (`config.yaml`)

### Scripts Separados

Não poluem o novo projeto. Removidos após uso.

### Documentação Estratificada

- `README.md` - Entry point (PT/EN)
- `README-PT.md` - Guia completo (PT)
- `QUICKSTART-PT.md` - 3 passos rápidos (PT)
- `.opencode/ARCHITECTURE.md` - Docs dos agents

---

## 🔧 Como Customizar

### 1. Adicionar Novo Agent

Crie: `.opencode/agents/meu-agent.md`

```markdown
# Agent: Meu Agent

## Description
O que faz...

## When to use
- Situação 1
- Situação 2

## System Prompt
You are...
```

### 2. Adicionar Novo Skill

Crie pasta: `.opencode/skills/meu-skill/`

Com arquivo: `SKILL.md`

### 3. Customizar Convenções

Edite: `.opencode/memory/project-conventions.md`

```markdown
# Project Conventions

## Seu contexto aqui
```

### 4. Adicionar Specs

Crie: `openspec/specs/minha-feature.md`

Use como template os exemplos inclusos.

---

## 📊 Estatísticas

| Item | Quantidade |
|------|-----------|
| Agents | 24 |
| OpenSpec Skills | 5 |
| Total Skills | 45+ |
| Workflows | 13 |
| Rules | 1 |
| Memory Files | 2 |
| Example Specs | 2 |
| Documentação PT | 4 |
| Documentação EN | 4 |
| **Total Files** | **~120+** |

---

## 🔗 Relações

```
Agent → Skills
  |
  └→ Workflows
      |
      └→ Rules
          |
          └→ Memory (project conventions)
```

Cada agent tem acesso a:
- Todos os skills
- Todos os workflows
- Todas as rules
- Convenções do projeto

---

## 📝 Versionamento

Template segue **Semantic Versioning**:

- `MAJOR` - Mudanças que quebram compatibilidade
- `MINOR` - Novos agents/skills
- `PATCH` - Bug fixes e documentação

Veja [CHANGELOG.md](CHANGELOG.md) para histórico.

---

## 🚀 Próximos Passos

1. **Entenda a estrutura** - Leia este arquivo ✅
2. **Customize** - Edite convenções em `.opencode/memory/`
3. **Crie specs** - Adicione em `openspec/specs/`
4. **Use agents** - Explore os 29 agents especializados
5. **Compartilhe** - Faça um fork e customize!

---

**Happy building! 🎉**
