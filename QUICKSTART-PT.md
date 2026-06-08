# 3 Passos Rápidos - OpenCode SDD Starter

Comece em menos de 2 minutos ⚡

---

## 1️⃣ Clone ou Use Template

### Opção A: GitHub Template (Recomendado)

```
1. Acesse: https://github.com/yurilq/opencode-sdd-starter
2. Clique: "Use this template"
3. Crie um novo repositório
4. Clone: git clone SEU_REPO_URL
```

### Opção B: Clone Direto

```bash
git clone https://github.com/yurilq/opencode-sdd-starter.git meu-projeto
cd meu-projeto
```

---

## 2️⃣ Execute o Setup

### Windows (PowerShell)

```powershell
.\scripts\setup-workspace.ps1
```

Se não funcionar:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\scripts\setup-workspace.ps1
```

### macOS/Linux (Bash)

```bash
chmod +x scripts/setup-workspace.sh
./scripts/setup-workspace.sh
```

**O que acontece:**
- ✅ Node.js/npm validado
- ✅ `.opencode/` copiado (29 agents, 13 workflows, 45+ skills)
- ✅ `openspec/` configurado
- ✅ OpenCode instalado
- ✅ Git inicializado

---

## 3️⃣ Comece a Usar!

### Iniciar OpenCode

```bash
opencode
```

### Propor uma Feature

```
Type: /openspec-propose
```

Responda as perguntas:
- O que você quer construir?
- Contexto do projeto?
- Detalhe dos requisitos?

OpenCode vai:
1. ✅ Propor a feature
2. ✅ Criar um plano detalhado
3. ✅ Gerar tarefas específicas
4. ✅ Estimar esforço

### Explorar a Spec

```
Type: /openspec-explore
```

### Aplicar Mudanças

```
Type: /openspec-apply-change
```

OpenCode:
- ✅ Implementa conforme spec
- ✅ Segue as tarefas
- ✅ Atualiza conforme progresso

---

## 📊 O que você tem

- ✅ **29 Agents** - IA especializada
- ✅ **45+ Skills** - Conhecimento estruturado
- ✅ **13 Workflows** - Automações prontas
- ✅ **2 Exemplos** - specs para aprender

---

## 📚 Próximos Passos

1. Leia: `README-PT.md` (guia completo)
2. Explore: `.opencode/ARCHITECTURE.md`
3. Veja exemplos: `openspec/specs/`
4. Customize: `.opencode/memory/project-conventions.md`

---

## ❓ Dúvidas?

- **Setup não funciona?** → Ver `TROUBLESHOOTING.md`
- **OpenCode não inicia?** → Instale: `npm install opencode-ai`
- **Falta Node.js?** → https://nodejs.org/

---

**Ready? Type `opencode` and start building! 🚀**
