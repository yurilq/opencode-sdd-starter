# 3 Quick Steps - OpenCode SDD Starter

Get started in less than 2 minutes ⚡

---

## 1️⃣ Clone or Use Template

### Option A: GitHub Template (Recommended)

```
1. Go to: https://github.com/yurilq/opencode-sdd-starter
2. Click: "Use this template"
3. Create new repository
4. Clone: git clone YOUR_REPO_URL
```

### Option B: Direct Clone

```bash
git clone https://github.com/yurilq/opencode-sdd-starter.git my-project
cd my-project
```

---

## 2️⃣ Run Setup

### Windows (PowerShell)

```powershell
.\scripts\setup-workspace.ps1
```

If permission issues:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\scripts\setup-workspace.ps1
```

### macOS/Linux (Bash)

```bash
chmod +x scripts/setup-workspace.sh
./scripts/setup-workspace.sh
```

**What happens:**
- ✅ Node.js/npm validated
- ✅ `.opencode/` copied (29 agents, 13 workflows, 45+ skills)
- ✅ `openspec/` configured
- ✅ OpenCode installed
- ✅ Git initialized

---

## 3️⃣ Start Using!

### Launch OpenCode

```bash
opencode
```

### Propose a Feature

```
Type: /openspec-propose
```

Answer the questions:
- What do you want to build?
- Project context?
- Requirements details?

OpenCode will:
1. ✅ Propose the feature
2. ✅ Create detailed plan
3. ✅ Generate specific tasks
4. ✅ Estimate effort

### Explore the Spec

```
Type: /openspec-explore
```

### Apply the Changes

```
Type: /openspec-apply-change
```

OpenCode will:
- ✅ Implement per spec
- ✅ Follow the tasks
- ✅ Update as progress happens

---

## 📊 What You Have Now

- ✅ **29 Agents** - Specialized AI
- ✅ **45+ Skills** - Structured knowledge
- ✅ **13 Workflows** - Ready automations
- ✅ **2 Examples** - Specs to learn from

---

## 📚 Next Steps

1. Read: `README-EN.md` (complete guide)
2. Explore: `.opencode/ARCHITECTURE.md`
3. See examples: `openspec/specs/`
4. Customize: `.opencode/memory/project-conventions.md`

---

## ❓ Questions?

- **Setup failing?** → Check `TROUBLESHOOTING.md`
- **OpenCode won't start?** → Run: `npm install opencode-ai`
- **Need Node.js?** → https://nodejs.org/

---

**Ready? Type `opencode` and start building! 🚀**
