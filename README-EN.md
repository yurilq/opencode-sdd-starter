# 🚀 OpenCode SDD Starter

**Professional template** to start projects with OpenCode + OpenSpec (Spec-Driven Development)

> An AI-powered framework for building better software faster.

---

## 🎯 What is this?

A GitHub template repository containing:
- ✅ **29 Specialized Agents** - AI for every role
- ✅ **45+ Skills** - Knowledge across multiple domains
- ✅ **13 Ready Workflows** - Automations with slash commands
- ✅ **OpenSpec Configured** - Ready for Spec-Driven Development
- ✅ **2 Complete Examples** - Real-world specs to learn from

**Result:** Every new project starts with a professional, production-ready setup.

---

## 🚀 Quick Start

### Option 1: GitHub Template (Recommended) ⭐

1. Visit: https://github.com/yurilq/opencode-sdd-starter
2. Click: **"Use this template"**
3. Name your project
4. GitHub creates your repository
5. Clone it locally:
   ```bash
   git clone https://github.com/YOUR_USER/YOUR_PROJECT.git
   cd YOUR_PROJECT
   ```
6. Run setup:
   ```bash
   # Windows (PowerShell)
   .\scripts\setup-workspace.ps1

   # macOS/Linux (Bash)
   ./scripts/setup-workspace.sh
   ```

### Option 2: Manual Clone

```bash
git clone https://github.com/yurilq/opencode-sdd-starter.git my-project
cd my-project

# Windows (PowerShell)
.\scripts\setup-workspace.ps1

# macOS/Linux (Bash)
./scripts/setup-workspace.sh
```

---

## ✨ What You Get

### 29 Specialized Agents

Expert AI agents for different domains:

| Category | Agents |
|----------|--------|
| **Frontend** | frontend-specialist |
| **Backend** | backend-specialist |
| **Database** | database-architect |
| **Mobile** | mobile-developer |
| **DevOps** | devops-engineer |
| **Security** | security-auditor, penetration-tester |
| **Testing** | test-engineer, qa-automation-engineer |
| **Debugging** | debugger, code-archaeologist |
| **And more...** | 13 additional specialists |

### 45+ Domain-Specific Skills

Knowledge modules across:
- Frontend & UI (React, Vue, Tailwind)
- Backend & API (Node.js, Python, Rust)
- Database & Schema
- DevOps & Cloud
- Testing & Quality
- Security & Performance
- And much more!

### 13 Ready Workflows

Slash commands for automation:

```
/brainstorm   - Brainstorm ideas
/plan         - Plan features
/create       - Create new code
/debug        - Debug problems
/test         - Run tests
/deploy       - Deploy to production
/coordinate   - Coordinate multiple agents
/enhance      - Incremental improvements
/verify       - Verify implementation
/preview      - Preview before merge
/remember     - Save project context
/status       - Project status
/orchestrate  - Complex task orchestration
```

---

## 📖 Documentation

- **[README.md](README.md)** - Start here (bilingual)
- **[QUICKSTART-EN.md](QUICKSTART-EN.md)** - 3 quick steps
- **[README-EN.md](README-EN.md)** - Complete guide (this file)
- **[STRUCTURE.md](STRUCTURE.md)** - Template architecture
- **[TROUBLESHOOTING.md](TROUBLESHOOTING.md)** - FAQ

---

## 🎯 Project Structure

After setup, your project has:

```
my-project/
│
├── .opencode/                    # OpenCode Configuration
│   ├── agents/ (29 files)        # Specialized agents
│   ├── skills/                   # OpenSpec skills
│   │   ├── openspec-propose/
│   │   ├── openspec-apply-change/
│   │   ├── openspec-explore/
│   │   ├── openspec-archive-change/
│   │   └── openspec-sync-specs/
│   ├── workflows/ (13 files)     # Slash commands
│   ├── rules/                    # Custom rules
│   │   └── GEMINI.md
│   ├── memory/                   # Project conventions
│   │   ├── MEMORY.md
│   │   └── project-conventions.md
│   ├── ARCHITECTURE.md           # Agent documentation
│   ├── package.json
│   └── mcp_config.json
│
├── openspec/                     # Spec-Driven Development
│   ├── config.yaml               # OpenSpec configuration
│   ├── specs/                    # Your specifications
│   │   ├── exemplo-feature-simples.md
│   │   └── exemplo-refactoring.md
│   └── changes/
│       └── archive/              # Completed specs
│
├── package.json                  # Your project config
├── .gitignore
└── README-NEW-PROJECT.md         # Onboarding guide
```

---

## 🛠️ Using OpenSpec

### 1. Propose a Feature

```bash
opencode
# Type: /openspec-propose
```

OpenCode will:
- ✅ Propose the feature
- ✅ Create a detailed plan
- ✅ Generate specific tasks
- ✅ Estimate effort

### 2. Explore the Spec

```bash
# Type: /openspec-explore
```

- Analyzes spec in detail
- Asks clarifying questions
- Validates completeness

### 3. Apply Changes

```bash
# Type: /openspec-apply-change
```

- Implements according to spec
- Follows tasks
- Updates as progress happens

### 4. Archive Completed Spec

```bash
# Type: /openspec-archive-change
```

- Marks as complete
- Moves to history
- Maintains traceability

---

## 📚 Included Examples

### Example 1: Simple Feature

**File:** `openspec/specs/exemplo-feature-simples.md`

Feature: OAuth2 Authentication (Google + GitHub)
- **Size:** ~19 hours
- **Complexity:** Medium
- **Contains:** Full spec with tasks, acceptance criteria, risks

### Example 2: Refactoring

**File:** `openspec/specs/exemplo-refactoring.md`

Refactoring: Consolidate Button Components
- **Size:** ~12 hours
- **Complexity:** Medium
- **Contains:** Analysis, migration plan, validation steps

---

## 🔧 Customization

### Add Your Agents

Create: `.opencode/agents/your-agent.md`

```markdown
# Agent: Your Agent

Description: ...

When to use:
- Situation 1
- Situation 2

System Prompt:
You are...
```

### Add Skills

Create folder: `.opencode/skills/your-skill/`

With file: `SKILL.md`

### Customize Project Conventions

Edit: `.opencode/memory/project-conventions.md`

```markdown
# Project Conventions

## Git Workflow
- Format: feature/[slug], fix/[bug-slug]

## Naming
- Components: PascalCase
- Functions: camelCase
```

---

## 📊 By the Numbers

| Item | Count |
|------|-------|
| Agents | 29 |
| OpenSpec Skills | 5 |
| Total Skills | 45+ |
| Workflows | 13 |
| Rules | 1 |
| Example Specs | 2 |
| Documentation Files | 8 |
| **Total Files** | **~120+** |

---

## 🚨 Troubleshooting

### Setup doesn't work?

→ See [TROUBLESHOOTING.md](TROUBLESHOOTING.md)

### OpenCode won't start?

```bash
npm install opencode-ai --save-dev
opencode
```

### Missing Node.js?

Install from https://nodejs.org/ (LTS recommended)

---

## 🔗 Links

- [OpenCode Documentation](https://opencode.ai/docs)
- [GitHub - OpenCode](https://github.com/anomalyco/opencode)
- [This Template](https://github.com/yurilq/opencode-sdd-starter)
- [OpenCode Discord](https://opencode.ai/discord)

---

## 📝 License

MIT - Use freely for any purpose!

---

## 🎉 Ready to Start?

```bash
# 1. Clone or use template
git clone https://github.com/yurilq/opencode-sdd-starter.git

# 2. Run setup
./scripts/setup-workspace.ps1  # or .sh

# 3. Start OpenCode
opencode

# 4. Propose your first feature
/openspec-propose
```

**Happy coding! 🚀**

---

## Quick Commands

```bash
# Start OpenCode
opencode

# View available agents
opencode --list-agents

# View available skills
opencode --list-skills

# Propose new feature with spec
/openspec-propose

# Explore spec in detail
/openspec-explore

# Apply changes from spec
/openspec-apply-change

# Archive completed spec
/openspec-archive-change
```

---

**Made with ❤️ by the OpenCode community**
