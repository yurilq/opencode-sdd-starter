# Spec: Refatorar componentes Button

## Proposta

Consolidar 3 variações de botão (Primary, Secondary, Danger) em um único componente genérico com melhor reutilização de código e consistência visual.

## Contexto

Atualmente temos `PrimaryButton.tsx`, `SecondaryButton.tsx` e `DangerButton.tsx` com muito código duplicado. O design system requer manter os 3 estilos, mas temos oportunidade de unificar a implementação.

## Objetivos

- ✅ Reduzir duplicação de código ~40%
- ✅ Manter API pública igual (sem quebra)
- ✅ Melhorar manutenibilidade
- ✅ Adicionar suporte a ícones
- ✅ Melhorar acessibilidade

## Não-Objetivos

- Mudar design visual
- Adicionar novos estilos
- Mudar props públicas
- Refatorar outros componentes

## Contexto Técnico

- Stack: React + TypeScript + Tailwind CSS
- Arquivos afetados: `src/components/Button/`
- Dependências: nenhuma nova

## Tarefas

### 1. Análise das variações (2h)
- [ ] Documentar comportamento de cada botão
- [ ] Identificar código comum
- [ ] Identificar diferenças de estilo
- [ ] Criar matriz de comparação

### 2. Criar novo componente Button genérico (4h)
- [ ] Criar `Button.tsx` com prop `variant`
- [ ] Implementar lógica de estilos
- [ ] Implementar loading state
- [ ] Implementar disabled state
- [ ] Suporte a ícones (icon prop)

### 3. Migrar usos existentes (3h)
- [ ] Encontrar todos os imports antigos
- [ ] Atualizar imports para novo Button
- [ ] Atualizar props para usar `variant`
- [ ] Testar em cada página

### 4. Remover antigos (1h)
- [ ] Deletar `PrimaryButton.tsx`
- [ ] Deletar `SecondaryButton.tsx`
- [ ] Deletar `DangerButton.tsx`
- [ ] Limpar exports

### 5. Testes (2h)
- [ ] Testes unitários do novo componente
- [ ] Testes de renderização com cada variant
- [ ] Testes de acessibilidade
- [ ] Visual regression tests

## Critérios de Aceitação

- ✅ Novo componente Button existe e funciona
- ✅ Todos os usos foram migrados
- ✅ Componentes antigos foram removidos
- ✅ Visual é idêntico ao original
- ✅ Testes passam 100%
- ✅ Não há mais imports dos arquivos antigos

## Estimativa

- **Total**: ~12 horas
- **Sprint**: 0.75 sprint
- **Equipe**: 1 dev frontend

## Dependências

- Nenhuma

## Riscos

- **Risco**: Quebra em alguma página não detectada
  - **Mitigação**: Busca global por imports antigos
- **Risco**: Mudança visual acidental
  - **Mitigação**: Comparação lado a lado com original

## Notas

Depois dessa refatoração, consideramos:
- Adicionar más práticas: `size`, `rounded`
- Criar `ButtonGroup` para agrupar botões
- Integrar com design tokens (cores, typography)
