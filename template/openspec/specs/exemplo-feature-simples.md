# Spec: Autenticação OAuth2

## Proposta

Implementar autenticação social com Google e GitHub para permitir que usuários se registrem e façam login de forma simples e segura.

## Contexto

Projeto web fullstack com Node.js/Express backend e React frontend. Necessário oferecer múltiplas opções de login para melhorar experiência do usuário.

## Objetivos

- ✅ Autenticação com Google OAuth2
- ✅ Autenticação com GitHub OAuth2
- ✅ Persistência de sessão
- ✅ Logout seguro
- ✅ Proteção de rotas autenticadas

## Não-Objetivos

- Autenticação com Microsoft ou Apple (fazer depois)
- MFA - autenticação multi-fator (próxima sprint)
- SAML/LDAP corporativo (futuro)

## Contexto Técnico

- Backend: Express.js + Passport.js
- Frontend: React + Auth context
- Database: PostgreSQL
- Session: JWT tokens

## Tarefas

### 1. Setup das credenciais (4h)
- [ ] Criar aplicação no Google Cloud Console
- [ ] Criar OAuth app no GitHub
- [ ] Documentar credentials (em .env.example)
- [ ] Validar que credenciais funcionam

### 2. Backend - Rota de Callback (6h)
- [ ] Instalar passport-google-oauth20
- [ ] Instalar passport-github2
- [ ] Criar endpoint POST /auth/google/callback
- [ ] Criar endpoint POST /auth/github/callback
- [ ] Gerar JWT tokens
- [ ] Salvar usuário no banco (ou atualizar)
- [ ] Testes unitários

### 3. Frontend - UI Login (5h)
- [ ] Criar componente LoginPage
- [ ] Adicionar botão "Login with Google"
- [ ] Adicionar botão "Login with GitHub"
- [ ] Salvar token em localStorage
- [ ] Criar AuthContext para gerenciar estado
- [ ] Proteger rotas privadas

### 4. Testes E2E (4h)
- [ ] Test: Usuário clica login Google
- [ ] Test: Popup abre e autentica
- [ ] Test: Token é salvo após retorno
- [ ] Test: Usuário pode acessar dashboard
- [ ] Test: Logout limpa token

## Critérios de Aceitação

- ✅ Usuário consegue fazer login com Google
- ✅ Usuário consegue fazer login com GitHub
- ✅ Token JWT é válido por 7 dias
- ✅ Logout remove token do cliente e backend
- ✅ Rotas privadas redirecionam para login
- ✅ Testes E2E passam 100%

## Estimativa

- **Total**: ~19 horas
- **Sprint**: 1 sprint (2 semanas)
- **Equipe**: 1 dev full-stack + 1 QA

## Dependências

- Nenhuma - pode começar imediatamente

## Riscos

- **Risco**: Timeout na autenticação Google
  - **Mitigação**: Implementar retry logic
- **Risco**: Usuários duplicados em banco
  - **Mitigação**: Email como unique key

## Notas

Este é um exemplo básico. Em produção, adicionar:
- Rate limiting nos endpoints de auth
- CSRF protection
- Verificação de email
- Refresh tokens com rotation
