# Splash Screen - Solução para Tempo de Exibição

## Problema Resolvido

A splash screen não estava sendo exibida por tempo suficiente devido ao redirecionamento automático baseado no estado de autenticação.

## Solução Implementada

### 1. **SplashBloc** (`blocs/splash_bloc/`)
- **Responsabilidade**: Controla o estado da splash screen
- **Estados**:
  - `SplashInitial`: Estado inicial
  - `SplashLoading`: Carregando (aguardando tempo mínimo)
  - `SplashReady`: Pronto para navegação
  - `SplashFinished`: Concluído

### 2. **Detecção Inteligente de Hot Restart**
- **Funcionalidade**: Detecta se é um hot reload, hot restart ou restart real
- **Comportamento**: 
  - **Hot Reload**: Pula splash screen diretamente
  - **Hot Restart**: Exibe splash screen por 1 segundo
  - **Restart Real**: Exibe splash screen por 1 segundo

### 3. **Lógica de Redirecionamento Atualizada**
- **Tempo mínimo**: 1 segundo garantido para exibição
- **Fluxo**:
  1. App inicia na splash screen
  2. Router detecta se é primeira execução
  3. SplashBloc verifica timestamp e estado
  4. Se for hot reload: Pula direto para autenticação
  5. Se for hot restart/restart: Aguarda 1 segundo
  6. Após o tempo, redireciona baseado na autenticação

### 4. **Integração com Router**
- Router agora considera tanto o estado de autenticação quanto o estado da splash
- Evita redirecionamentos prematuros
- Garante experiência visual consistente
- Controle inteligente de quando iniciar a splash

## Como Funciona

### Hot Reload:
```dart
// 1. Hot reload detectado
if (tempo < 5 segundos desde último start) {
  // 2. Pula splash screen diretamente
  emit(SplashState.finished())
  return
}

// 3. Router redireciona imediatamente
if (authenticated) -> /initial
else -> /auth
```

### Hot Restart/Restart Real:
```dart
// 1. Hot restart detectado
if (tempo > 5 segundos OU primeira execução) {
  // 2. Aguarda 1 segundo
  await Future.delayed(Duration(seconds: 1))
  
  // 3. Marca como pronto
  emit(SplashState.ready())
  
  // 4. Router marca como concluída
  splashBloc.add(SplashEvent.completed())
  
  // 5. Router redireciona baseado na autenticação
  if (authenticated) -> /initial
  else -> /auth
}
```

## Benefícios

- ✅ **Tempo Garantido**: Splash screen sempre exibida por 1 segundo no restart
- ✅ **Hot Reload Rápido**: Não exibe splash durante desenvolvimento
- ✅ **Hot Restart Funcional**: Funciona corretamente sem travar
- ✅ **Animações Completas**: Todas as animações têm tempo para executar
- ✅ **Experiência Consistente**: Comportamento previsível
- ✅ **Código Limpo**: Lógica separada e bem organizada
- ✅ **Desenvolvimento Ágil**: Hot reloads não interrompem o fluxo

## Configuração

O tempo mínimo pode ser ajustado no `SplashBloc`:

```dart
// Em splash_bloc.dart
await Future.delayed(const Duration(seconds: 1)); // Altere aqui
```

O tempo para detectar Hot Restart pode ser ajustado:

```dart
// Em splash_bloc.dart
if (now.difference(_lastStartTime!).inSeconds > 5) { // Altere aqui
```

## Detalhes Técnicos

- **Variável Estática**: `_isFirstRun` mantém estado entre hot reloads
- **Timestamp**: `_lastStartTime` detecta Hot Restart baseado no tempo
- **Controle do Router**: Router inicia o SplashBloc apenas quando necessário
- **Singleton**: SplashBloc é injetado como singleton para manter estado
- **Estados Freezed**: Código type-safe e imutável
<!-- AUTO-GENERATED DOC START -->
 # splash_screen Module

The splash_screen module is responsible for managing the initial start-up screen of the application, displaying the company logo and other visual elements to provide an engaging user experience.

## Architecture and component organization
The module consists of several components organized as follows:

1. **Blocs**: This folder contains the SplashBloc that manages the state and events for the splash screen.
   - `splash_bloc.dart`: Contains the main SplashBloc class, managing the logic for initializing the application and changing states when necessary.
   - `splash_event.dart`: Defines various events that can be emitted by the SplashBloc.
   - `splash_state.dart`: Describes the different states the SplashBloc can have during its lifecycle.
   - `splash_bloc.freezed.dart`: A Freezed implementation for type-safe and immutable objects.

2. **presentation/pages**: This folder contains the `SplashScreen` widget, which displays the actual splash screen to the user.
   - `splash_screen.dart`: The main entry point of this module, showing the visual elements for the initial start-up screen.

## Key classes and their responsibilities
- **SplashBloc**: Manages the state and events for the splash screen, including checking if the user is already logged in or not.
- **SplashScreen**: A Flutter widget that displays the actual splash screen with company logo, onboarding information, and other visual elements.

## Data flow and state management
1. When the SplashBloc starts, it checks if the user is already logged in or not. If the user is already logged in, it will navigate to the main application screen. Otherwise, it continues with the onboarding process (if applicable).
2. As events are emitted by other parts of the app (such as user login), the SplashBloc can respond accordingly and change its state. When the state changes, the `SplashScreen` will be rebuilt to reflect the new state.

## How to use this module
To use this module in your application:

1. Import the necessary packages for BLoC, Flutter, Design System, and Common modules.
2. Inject the SplashBloc as a singleton using your dependency injection framework of choice.
3. Use the `SplashScreen` widget in your app to display the splash screen.
<!-- AUTO-GENERATED DOC END -->
