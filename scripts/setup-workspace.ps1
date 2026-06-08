#!/usr/bin/env powershell

<#
.SYNOPSIS
    Setup script para novo projeto OpenCode + OpenSpec

.DESCRIPTION
    Este script:
    1. Valida pré-requisitos (Node.js, npm)
    2. Valida estrutura do template
    3. Copia .opencode/ e openspec/ para o PROJETO PARENT (nível acima)
    4. Instala OpenCode no projeto parent
    5. Remove o template e a pasta scripts/
    6. Inicializa git no projeto parent (opcional)

.EXAMPLE
    cd seu-projeto
    path/to/template/scripts/setup-workspace.ps1

.NOTES
    O script deve ser executado DE DENTRO de seu projeto.
    Ele copiará os arquivos para o diretório pai (onde o template foi clonado).
#>

param(
    [switch]$NoGit,
    [switch]$Verbose
)

$ErrorActionPreference = "Stop"
$ProgressPreference = "SilentlyContinue"

# Cores
$Green = "`e[32m"
$Yellow = "`e[33m"
$Red = "`e[31m"
$Blue = "`e[34m"
$Reset = "`e[0m"

function Write-Success {
    param([string]$Message)
    Write-Host "${Green}✅ $Message${Reset}"
}

function Write-Info {
    param([string]$Message)
    Write-Host "${Blue}ℹ️  $Message${Reset}"
}

function Write-Warning {
    param([string]$Message)
    Write-Host "${Yellow}⚠️  $Message${Reset}"
}

function Write-Error {
    param([string]$Message)
    Write-Host "${Red}❌ $Message${Reset}"
    exit 1
}

# ============================================
# 1. Validar pré-requisitos
# ============================================
Write-Info "Validando pré-requisitos..."

# Validar Node.js
$node = node --version 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Error "Node.js não encontrado. Instale em https://nodejs.org/"
}
Write-Success "Node.js $node encontrado"

# Validar npm
$npm = npm --version 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Error "npm não encontrado. Instale Node.js com npm"
}
Write-Success "npm $npm encontrado"

# ============================================
# 2. Validar estrutura do template
# ============================================
Write-Info "Validando estrutura do template..."

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$templateDir = Join-Path $scriptDir "..\template"

@(
    ".opencode\agents",
    ".opencode\workflows",
    ".opencode\skills",
    "openspec\specs"
) | ForEach-Object {
    $path = Join-Path $templateDir $_
    if (-not (Test-Path $path)) {
        Write-Error "Pasta não encontrada: $path"
    }
}
Write-Success "Estrutura de template válida"

# ============================================
# 3. Copiar .opencode/ e openspec/ para PROJECT PARENT
# ============================================
Write-Info "Copiando configuração para projeto parent..."

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$templateDir = Join-Path $scriptDir "..\template"
$projectDir = Split-Path -Parent (Split-Path -Parent $scriptDir)  # Sobe 2 níveis

Write-Info "Template em: $templateDir"
Write-Info "Projeto em: $projectDir"

$opencodeSrc = Join-Path $templateDir ".opencode"
$opencodeDst = Join-Path $projectDir ".opencode"

if (Test-Path $opencodeDst) {
    Write-Warning ".opencode já existe no projeto. Pulando cópia..."
} else {
    Copy-Item -Path $opencodeSrc -Destination $opencodeDst -Recurse -Force
    Write-Success ".opencode copiado"
}

$openspecSrc = Join-Path $templateDir "openspec"
$openspecDst = Join-Path $projectDir "openspec"

if (Test-Path $openspecDst) {
    Write-Warning "openspec já existe no projeto. Pulando cópia..."
} else {
    Copy-Item -Path $openspecSrc -Destination $openspecDst -Recurse -Force
    Write-Success "openspec copiado"
}

# ============================================
# 4. Instalar/atualizar package.json no projeto parent
# ============================================
Write-Info "Configurando package.json no projeto parent..."

$packageJsonPath = Join-Path $projectDir "package.json"
if (-not (Test-Path $packageJsonPath)) {
    Write-Info "Criando package.json base..."
    Copy-Item (Join-Path $templateDir "package.json") $packageJsonPath -Force
}

# Instalar dependências no projeto parent
Write-Info "Instalando OpenCode no projeto parent..."
Push-Location $projectDir
npm install opencode-ai --save-dev 2>$null
$installSuccess = $LASTEXITCODE -eq 0
Pop-Location

if ($installSuccess) {
    Write-Success "OpenCode instalado com sucesso"
} else {
    Write-Warning "Não foi possível instalar OpenCode. Execute: npm install opencode-ai --save-dev"
}

# ============================================
# 5. Remover pasta do template
# ============================================
Write-Info "Limpando template..."
$templatePath = Split-Path -Parent (Split-Path -Parent $scriptDir)
if (Test-Path $templatePath) {
    Remove-Item $templatePath -Recurse -Force -ErrorAction SilentlyContinue
    Write-Success "Template removido"
}

# ============================================
# 6. Inicializar git no projeto parent (opcional)
# ============================================
if (-not $NoGit) {
    $gitPath = Join-Path $projectDir ".git"
    if (-not (Test-Path $gitPath)) {
        Write-Info "Inicializando repositório Git no projeto parent..."
        Push-Location $projectDir
        git init 2>$null
        git add . 2>$null
        git commit -m "chore: Initial commit with OpenCode + OpenSpec infrastructure" 2>$null
        if ($LASTEXITCODE -eq 0) {
            Write-Success "Git inicializado e primeiro commit realizado"
        } else {
            Write-Warning "Git não está configurado ou não possui commits iniciais"
        }
        Pop-Location
    }
}

# ============================================
# 7. Resumo final
# ============================================
Write-Host "`n"
Write-Host "${Green}════════════════════════════════════════${Reset}"
Write-Host "${Green}✨ Setup concluído com sucesso!${Reset}"
Write-Host "${Green}════════════════════════════════════════${Reset}"

Write-Host @"

📊 Seu projeto agora contém:
   • 29 Agents especializados
   • 5 OpenSpec Skills
   • 13 Workflows
   • Convenções de projeto
   • 2 exemplos de specs

🚀 Próximos passos:

   1. Inicie OpenCode:
      ${Blue}opencode${Reset}

   2. Explore os agents (Ctrl+P):
      ${Blue}/help${Reset}

   3. Comece com uma spec:
      ${Blue}/openspec-propose${Reset}

📚 Documentação:

   • Arquivo: README-NOVO-PROJETO.md
   • Guia: QUICKSTART-PT.md
   • Arquitetura: .opencode/ARCHITECTURE.md

Happy coding! 🎉
"@

Write-Host "${Green}════════════════════════════════════════${Reset}"
