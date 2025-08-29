# Core - Estrutura Organizacional

Este diretório contém os componentes centrais da aplicação, organizados de forma modular e limpa.

## Estrutura

### `providers/app_providers.dart`
- **Responsabilidade**: Centraliza a configuração de todos os BlocProviders da aplicação
- **Benefícios**: 
  - Facilita a manutenção dos providers
  - Reduz a complexidade do `AppShell`
  - Permite reutilização em diferentes contextos

### `router/`
- **`app_routes.dart`**: Define as constantes das rotas da aplicação
- **`app_router.dart`**: Configura o GoRouter com todas as rotas e lógica de redirecionamento

## Benefícios da Nova Organização

1. **Separação de Responsabilidades**: Cada arquivo tem uma responsabilidade específica
2. **Código Mais Limpo**: O `AppShell` agora foca apenas na composição dos widgets
3. **Manutenibilidade**: Mudanças nas rotas ou providers são isoladas
4. **Testabilidade**: Cada componente pode ser testado independentemente
5. **Reutilização**: Os componentes podem ser reutilizados em diferentes contextos

## Como Usar

### Adicionando uma Nova Rota
1. Adicione a constante em `app_routes.dart`
2. Adicione a rota em `app_router.dart` no método `_buildRoutes()`

### Adicionando um Novo Provider
1. Adicione o provider em `app_providers.dart` no método `buildBlocProviders()`

### Modificando a Lógica de Redirecionamento
1. Edite o método `_handleRedirect()` em `app_router.dart`
