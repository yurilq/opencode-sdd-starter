# 🆘 Troubleshooting - FAQ

Problemas comuns e soluções.

---

## ❌ Setup Não Funciona

### "Script não funciona no PowerShell"

**Erro:**
```
Cannot be loaded because running scripts is disabled on this system.
```

**Solução:**
```powershell
# Permitir execução de scripts
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Tentar novamente
.\scripts\setup-workspace.ps1
```

### "Script não funciona no Bash"

**Erro:**
```
Permission denied
```

**Solução:**
```bash
chmod +x scripts/setup-workspace.sh
./scripts/setup-workspace.sh
```

### "Node.js não encontrado"

**Erro:**
```
❌ Node.js não encontrado
```

**Solução:**

1. Instale Node.js: https://nodejs.org/
2. Escolha versão **LTS** (recomendado)
3. Reinicie o terminal
4. Verifique: `node --version`

### "npm não encontrado"

**Erro:**
```
❌ npm não encontrado
```

**Solução:**

Node.js já inclui npm. Se não tiver:
```bash
npm install -g npm@latest
```

### ".opencode já existe"

**Aviso:**
```
⚠️  .opencode já existe no projeto. Pulando cópia...
```

**Normal!** Se executar setup 2x, o script protege sua configuração.

**Para reconfigur:**
```bash
rm -rf .opencode
rm -rf openspec
./scripts/setup-workspace.ps1  # ou .sh
```

---

## ❌ OpenCode Não Inicia

### "opencode: comando não encontrado"

**Erro:**
```
bash: opencode: command not found
```

**Solução:**

```bash
# OpenCode não foi instalado
npm install opencode-ai --save-dev

# Tentar novamente
opencode
```

### "OpenCode trava ao iniciar"

**Solução:**

1. Feche OpenCode
2. Limpe cache:
   ```bash
   rm -rf ~/.opencode/cache
   ```
3. Abra novamente:
   ```bash
   opencode
   ```

### "Agents não aparecem"

**Verificar:**

1. Pasta `.opencode/agents/` existe?
   ```bash
   ls -la .opencode/agents/
   ```
2. Contém arquivos `.md`?
3. Reinicie OpenCode

### "Skills não carregam"

**Verificar:**

1. Pasta `.opencode/skills/` existe?
2. OpenSpec skills estão lá?
   ```bash
   ls -la .opencode/skills/
   ```
3. Reinicie OpenCode

---

## ❌ OpenSpec Não Funciona

### "/openspec-propose não funciona"

**Verificar:**

1. OpenSpec skills existem?
   ```bash
   ls .opencode/skills/openspec-*/
   ```
2. `openspec/config.yaml` existe?
3. Reinicie OpenCode

### "Spec não salva"

**Verificar:**

1. Pasta `openspec/specs/` tem permissão de escrita?
2. Disco tem espaço?
3. Arquivo não está aberto em outro editor

### "Erro ao arquivar spec"

**Verificar:**

1. Pasta `openspec/changes/archive/` existe?
   ```bash
   mkdir -p openspec/changes/archive
   ```
2. Tem permissão de escrita?
3. Caminho não tem caracteres inválidos

---

## ❌ Problemas com Git

### "Git não inicializa"

**Solução:**

```bash
# Instale Git
# Windows: https://git-scm.com/download/win
# macOS: brew install git
# Linux: apt-get install git

# Depois
git init
git add .
git commit -m "chore: Initial commit"
```

### "Git config não está setado"

**Erro:**
```
fatal: not possible to fast-forward, aborting.
```

**Solução:**

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu@email.com"
```

### "Primeiro commit falha"

**Solução:**

```bash
git config --local user.name "Seu Nome"
git config --local user.email "seu@email.com"
git add .
git commit -m "chore: Initial commit"
```

---

## ❌ Problemas com npm

### "npm install falha"

**Solução:**

```bash
# Limpe cache
npm cache clean --force

# Instale novamente
npm install
```

### "Versão de Node incompatível"

**Verificar:**

```bash
node --version
npm --version
```

Recomendado:
- Node.js 18+ (LTS)
- npm 8+

**Atualizar:**

```bash
npm install -g npm@latest
```

---

## ❌ Performance Lenta

### "OpenCode lento"

**Soluções:**

1. Feche abas abertas demais
2. Reduza número de agents ativos
3. Aumente RAM disponível
4. Reinicie OpenCode

### "Setup lento"

Normal se:
- Primeira instalação (npm install demora)
- Conexão internet lenta
- Disco lento

---

## ❌ Caracteres Especiais

### "Erro com acentuação em arquivo"

**Solução:**

1. Use UTF-8 encoding:
   ```bash
   # Windows
   chcp 65001
   ```
2. Ou renomeie sem acentos

---

## ✅ Como Debugar

### 1. Verifique a estrutura

```bash
# Deve existir:
ls -la .opencode/agents/
ls -la .opencode/skills/
ls -la .opencode/workflows/
ls -la openspec/specs/
```

### 2. Verifique permissões

```bash
# Todos os arquivos devem ser legíveis
chmod -R 644 .opencode/
chmod -R 755 .opencode/agents/
```

### 3. Verifique logs

OpenCode salva logs em:
- **Windows**: `%APPDATA%\opencode\logs\`
- **macOS**: `~/Library/Logs/opencode/`
- **Linux**: `~/.opencode/logs/`

### 4. Limpe cache

```bash
# Windows
Remove-Item -Path "$env:APPDATA\opencode\cache" -Recurse -Force

# macOS/Linux
rm -rf ~/.opencode/cache
```

### 5. Reinstale OpenCode

```bash
npm uninstall opencode-ai
npm install opencode-ai --save-dev
```

---

## 📞 Ainda com Dúvidas?

### Documentação

- [README-PT.md](README-PT.md) - Guia completo
- [QUICKSTART-PT.md](QUICKSTART-PT.md) - 3 passos
- [STRUCTURE.md](STRUCTURE.md) - Arquitetura

### Comunidade

- [OpenCode Discord](https://opencode.ai/discord)
- [OpenCode Issues](https://github.com/anomalyco/opencode/issues)
- [Este Template Issues](https://github.com/yurilq/opencode-sdd-starter/issues)

### Suporte

- [OpenCode Docs](https://opencode.ai/docs)
- [GitHub Issues](https://github.com/yurilq/opencode-sdd-starter/issues)

---

## 🐛 Encontrou um Bug?

1. **Verifique este arquivo** - Pode já estar documentado
2. **Procure issues abertas** - Pode já estar reportado
3. **Abra uma issue** - Inclua:
   - Seu SO (Windows/macOS/Linux)
   - Versão Node.js: `node --version`
   - Versão npm: `npm --version`
   - Stack trace completo
   - Passos para reproduzir

---

**Happy debugging! 🔍**
