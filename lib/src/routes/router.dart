import 'package:donezy_app/src/modules/auth/blocs/watch_auth_bloc/watch_auth_bloc.dart';
import 'package:donezy_app/src/modules/auth/presentation/pages/login_page.dart';
import 'package:donezy_app/src/modules/auth/presentation/pages/register_page.dart';
import 'package:donezy_app/src/modules/common/presentation/global_keys.dart';
import 'package:donezy_app/src/modules/home/initial_screen.dart';
import 'package:donezy_app/src/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  navigatorKey: GlobalKeys.rootNavigatorKey,
  initialLocation: AppRoutes.loginPath,
  redirect: (context, state) {
    String? route;
    BlocListener<WatchAuthBloc, WatchAuthState>(
      listener: (context, state) => switch (state) {
        WatchAuthInitial() || WatchAuthLoading() => null,
        Authenticated() => route = AppRoutes.initialScreenPath,
        Unauthenticated() => route = AppRoutes.loginPath,
        WatchAuthFailure() => route = AppRoutes.loginPath,
      },
    );
    return route;
  },

  routes: [
    // Rota root - será redirecionada baseada no status de autenticação
    GoRoute(
      path: AppRoutes.root,
      name: AppRoutes.auth,
      builder: (context, state) => const AuthRedirectPage(),
    ),

    // Rota de login
    GoRoute(
      path: AppRoutes.loginPath,
      name: AppRoutes.login,
      builder: (context, state) => const LoginPage(),
    ),

    // Rota de registro
    GoRoute(
      path: AppRoutes.registerPath,
      name: AppRoutes.register,
      builder: (context, state) => const RegisterPage(),
    ),

    // Rota da home (protegida)
    GoRoute(
      path: AppRoutes.initialScreenPath,
      name: AppRoutes.initialScreen,
      builder: (context, state) => const InitialScreen(),
    ),

    // Rota de notas (protegida)
    GoRoute(
      path: AppRoutes.notePath,
      name: AppRoutes.note,
      builder: (context, state) =>
          const Scaffold(body: Center(child: Text('Página de Notas'))),
    ),
  ],
);

// Widget para a rota root que mostra loading enquanto verifica autenticação
class AuthRedirectPage extends StatelessWidget {
  const AuthRedirectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchAuthBloc, WatchAuthState>(
      builder: (context, state) {
        return switch (state) {
          WatchAuthInitial() || WatchAuthLoading() => const Scaffold(
            body: Center(child: CircularProgressIndicator.adaptive()),
          ),
          Authenticated() => const InitialScreen(),
          Unauthenticated() => const LoginPage(),
          WatchAuthFailure() => const LoginPage(),
        };
      },
    );
  }
}
