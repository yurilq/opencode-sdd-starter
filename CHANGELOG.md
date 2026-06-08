# CHANGELOG

Todos as mudanças notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/) e este projeto segue [Semantic Versioning](https://semver.org/).

## [1.0.0] - 2026-06-08

### ✨ Added

- Estrutura template completa com `.opencode/` configurado
  - 29 agents especializados
  - 5 OpenSpec skills
  - 13 workflows prontos
  - System rules customizáveis
  - Memory system com convenções

- Configuração OpenSpec base
  - `config.yaml` com schema spec-driven
  - 2 exemplos de specs completas
  - Estrutura para histórico de mudanças

- Scripts de setup automático
  - `setup-workspace.ps1` para Windows/PowerShell
  - `setup-workspace.sh` para macOS/Linux
  - Validações de pré-requisitos (Node.js, npm)
  - Limpeza automática após setup

- Documentação completa
  - `README-PT.md` - Guia em Português
  - `QUICKSTART-PT.md` - 3 passos rápidos
  - `STRUCTURE.md` - Arquitetura detalhada
  - `TROUBLESHOOTING.md` - FAQ e soluções
  - `template/README-NOVO-PROJETO.md` - Onboarding

- Configuração GitHub
  - `.gitattributes` com configurações de LF
  - `LICENSE` MIT
  - GitHub Template ready (Use this template)

- Exemplos práticos
  - `template/openspec/specs/exemplo-feature-simples.md` - OAuth2
  - `template/openspec/specs/exemplo-refactoring.md` - Refactor Button

### 📝 Technical Details

- **Agents:** 29 especializados (Frontend, Backend, Mobile, DevOps, Security, etc)
- **Skills:** 45+ (Frontend design, React, Database, etc) + 5 OpenSpec específicas
- **Workflows:** 13 slash commands para automação
- **Size:** ~120+ arquivos totalizando uma configuração profissional completa

---

## Roadmap Futuro

### v1.1.0 (Planejado)

- [ ] README-EN.md (English docs)
- [ ] QUICKSTART-EN.md (English quick start)
- [ ] GitHub Actions para validação automática
- [ ] Mais exemplos de specs
- [ ] Customização de templates por tech stack

### v1.2.0 (Planejado)

- [ ] Docker support para setup
- [ ] Scripts de migração de projetos existentes
- [ ] Dashboard de progresso de specs
- [ ] Integração com CI/CD

### v2.0.0 (Futuro)

- [ ] Múltiplas linguagens de programação
- [ ] Mercado de agents/skills customizados
- [ ] Sincronização com GitHub Projects
- [ ] Suporte a monorepos

---

## Como Contribuir

1. Fork este repositório
2. Crie uma branch: `git checkout -b feature/nova-feature`
3. Commit suas mudanças: `git commit -am 'Add nova feature'`
4. Push para a branch: `git push origin feature/nova-feature`
5. Abra um Pull Request

---

## Suporte

- [Issues](https://github.com/yurilq/opencode-sdd-starter/issues)
- [Discussions](https://github.com/yurilq/opencode-sdd-starter/discussions)
- [OpenCode Discord](https://opencode.ai/discord)

---

## Licença

MIT - Veja [LICENSE](LICENSE) para detalhes

---

## Acknowledgments

- [OpenCode](https://github.com/anomalyco/opencode) - O incrível framework de AI agents
- [OpenSpec](https://opencode.ai/docs) - Spec-Driven Development
- Comunidade OpenCode

---

**Última atualização:** 2026-06-08
