import 'package:donezy_app/src/modules/auth/blocs/watch_auth_bloc/watch_auth_bloc.dart';
import 'package:donezy_app/src/modules/auth/presentation/auth_screen.dart';
import 'package:donezy_app/src/modules/common/infrastructure/bloc_converter/stream_to_listenable.dart';
import 'package:donezy_app/src/modules/home/presentation/screens/initial_screen.dart';
import 'package:donezy_app/src/modules/note/presentation/pages/create_item_page.dart';
import 'package:donezy_app/src/modules/note/presentation/pages/notes_page.dart';
import 'package:donezy_app/src/modules/profile/presentation/pages/profile_page.dart';
import 'package:donezy_app/src/modules/splash_screen/blocs/splash_bloc/splash_bloc.dart';
import 'package:donezy_app/src/modules/splash_screen/presentation/pages/splash_screen.dart';
import 'package:donezy_app/src/modules/task/presentation/pages/task_page.dart';
import 'package:donezy_app/src/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter createRouter(WatchAuthBloc authBloc, SplashBloc splashBloc) {
    return GoRouter(
      navigatorKey: GlobalKey<NavigatorState>(),
      initialLocation: AppRoutes.splash,
      routes: _buildRoutes(),
      refreshListenable: StreamToListenable([
        authBloc.stream,
        splashBloc.stream,
      ]),
      redirect: (context, state) =>
          _handleRedirect(context, state, authBloc, splashBloc),
    );
  }

  static List<GoRoute> _buildRoutes() {
    return [
      GoRoute(
        path: AppRoutes.notes,
        builder: (context, state) => const NotesPage(),
      ),
      GoRoute(
        path: AppRoutes.tasks,
        builder: (context, state) => const TaskPage(),
      ),
      GoRoute(
        path: AppRoutes.profile,
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: AppRoutes.auth,
        builder: (context, state) => const AuthScreen(),
      ),
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.initial,
        builder: (context, state) => const InitialScreen(),
      ),
      GoRoute(
        path: AppRoutes.createItemPage,
        builder: (context, state) => const CreateItemPage(),
      ),
    ];
  }

  static String? _handleRedirect(
    BuildContext context,
    GoRouterState state,
    WatchAuthBloc authBloc,
    SplashBloc splashBloc,
  ) {
    final authState = authBloc.state;
    final splashState = splashBloc.state;

    // Se estamos na splash screen e ela ainda não foi iniciada, inicia
    if (state.uri.path == AppRoutes.splash && splashState is SplashInitial) {
      splashBloc.add(const SplashEvent.started());
      return null;
    }

    // Se estamos na splash screen e ela está carregando, aguarda
    if (state.uri.path == AppRoutes.splash && splashState is SplashLoading) {
      return null;
    }

    // Se estamos na splash screen e ela está pronta, marca como concluída
    if (state.uri.path == AppRoutes.splash && splashState is SplashReady) {
      splashBloc.add(const SplashEvent.completed());
      return null;
    }

    // Se estamos na splash screen e ela foi concluída, redireciona baseado na autenticação
    if (state.uri.path == AppRoutes.splash && splashState is SplashFinished) {
      if (authState is Authenticated) {
        return AppRoutes.initial;
      }
      if (authState is Unauthenticated) {
        return AppRoutes.auth;
      }
    }

    // Se não estamos na splash screen e ela não foi concluída,
    // redireciona para a splash screen
    if (state.uri.path != AppRoutes.splash && splashState is! SplashFinished) {
      return AppRoutes.splash;
    }

    // Se não estamos na splash screen e ela foi concluída,
    // redireciona baseado no estado de autenticação
    if (state.uri.path != AppRoutes.splash && splashState is SplashFinished) {
      if (authState is Authenticated) {
        return AppRoutes.initial;
      }
      if (authState is Unauthenticated) {
        return AppRoutes.auth;
      }
    }

    return null;
  }
}
