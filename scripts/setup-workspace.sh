#!/usr/bin/env bash

#===============================================
# Setup script para novo projeto OpenCode + OpenSpec
#
# Uso: ./setup-workspace.sh [--no-git]
#
# Este script:
# 1. Valida pré-requisitos (Node.js, npm)
# 2. Valida estrutura do template
# 3. Copia .opencode/ e openspec/ para o projeto
# 4. Instala OpenCode
# 5. Remove a pasta scripts/
# 6. Inicializa git (opcional)
#===============================================

set -e

# Cores
GREEN='\033[32m'
YELLOW='\033[33m'
RED='\033[31m'
BLUE='\033[34m'
NC='\033[0m' # No Color

# Flags
NO_GIT=false

while [[ $# -gt 0 ]]; do
    case $1 in
        --no-git)
            NO_GIT=true
            shift
            ;;
        *)
            echo "Opção desconhecida: $1"
            exit 1
            ;;
    esac
done

# Funções de output
write_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

write_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

write_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

write_error() {
    echo -e "${RED}❌ $1${NC}"
    exit 1
}

# ============================================
# 1. Validar pré-requisitos
# ============================================
write_info "Validando pré-requisitos..."

# Validar Node.js
if ! command -v node &> /dev/null; then
    write_error "Node.js não encontrado. Instale em https://nodejs.org/"
fi
NODE_VERSION=$(node --version)
write_success "Node.js $NODE_VERSION encontrado"

# Validar npm
if ! command -v npm &> /dev/null; then
    write_error "npm não encontrado. Instale Node.js com npm"
fi
NPM_VERSION=$(npm --version)
write_success "npm $NPM_VERSION encontrado"

# ============================================
# 2. Validar estrutura do template
# ============================================
write_info "Validando estrutura do template..."

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TEMPLATE_DIR="$SCRIPT_DIR/../template"

for dir in ".opencode/agents" ".opencode/workflows" ".opencode/skills" "openspec/specs"; do
    if [ ! -d "$TEMPLATE_DIR/$dir" ]; then
        write_error "Pasta não encontrada: $TEMPLATE_DIR/$dir"
    fi
done
write_success "Estrutura de template válida"

# ============================================
# 3. Copiar .opencode/ e openspec/
# ============================================
write_info "Copiando configuração..."

PROJECT_DIR=$(pwd)
OPENCODE_SRC="$TEMPLATE_DIR/.opencode"
OPENCODE_DST="$PROJECT_DIR/.opencode"

if [ -d "$OPENCODE_DST" ]; then
    write_warning ".opencode já existe no projeto. Pulando cópia..."
else
    cp -r "$OPENCODE_SRC" "$OPENCODE_DST"
    write_success ".opencode copiado"
fi

OPENSPEC_SRC="$TEMPLATE_DIR/openspec"
OPENSPEC_DST="$PROJECT_DIR/openspec"

if [ -d "$OPENSPEC_DST" ]; then
    write_warning "openspec já existe no projeto. Pulando cópia..."
else
    cp -r "$OPENSPEC_SRC" "$OPENSPEC_DST"
    write_success "openspec copiado"
fi

# ============================================
# 4. Instalar/atualizar package.json
# ============================================
write_info "Configurando package.json..."

PACKAGE_JSON_PATH="$PROJECT_DIR/package.json"
if [ ! -f "$PACKAGE_JSON_PATH" ]; then
    write_info "Criando package.json base..."
    cp "$TEMPLATE_DIR/package.json" "$PACKAGE_JSON_PATH"
fi

# Instalar OpenCode
write_info "Instalando OpenCode..."
if npm install opencode-ai --save-dev >/dev/null 2>&1; then
    write_success "OpenCode instalado com sucesso"
else
    write_warning "Não foi possível instalar OpenCode. Execute: npm install opencode-ai --save-dev"
fi

# ============================================
# 5. Remover pasta scripts/
# ============================================
write_info "Limpando estrutura..."
if [ -d "$SCRIPT_DIR/../scripts" ]; then
    rm -rf "$SCRIPT_DIR/../scripts"
    write_success "Pasta scripts/ removida"
fi

# ============================================
# 6. Inicializar git (opcional)
# ============================================
if [ "$NO_GIT" = false ]; then
    if [ ! -d ".git" ]; then
        write_info "Inicializando repositório Git..."
        if git init >/dev/null 2>&1 && \
           git add . >/dev/null 2>&1 && \
           git commit -m "chore: Initial commit from opencode-sdd-starter template" >/dev/null 2>&1; then
            write_success "Git inicializado e primeiro commit realizado"
        else
            write_warning "Git não está configurado ou não possui commits iniciais"
        fi
    fi
fi

# ============================================
# 7. Resumo final
# ============================================
echo ""
echo -e "${GREEN}════════════════════════════════════════${NC}"
echo -e "${GREEN}✨ Setup concluído com sucesso!${NC}"
echo -e "${GREEN}════════════════════════════════════════${NC}"

cat << EOF

📊 Seu projeto agora contém:
   • 29 Agents especializados
   • 5 OpenSpec Skills
   • 13 Workflows
   • Convenções de projeto
   • 2 exemplos de specs

🚀 Próximos passos:

   1. Inicie OpenCode:
      ${BLUE}opencode${NC}

   2. Explore os agents (Ctrl+P):
      ${BLUE}/help${NC}

   3. Comece com uma spec:
      ${BLUE}/openspec-propose${NC}

📚 Documentação:

   • Arquivo: README-NOVO-PROJETO.md
   • Guia: QUICKSTART-PT.md
   • Arquitetura: .opencode/ARCHITECTURE.md

Happy coding! 🎉

EOF

echo -e "${GREEN}════════════════════════════════════════${NC}"
