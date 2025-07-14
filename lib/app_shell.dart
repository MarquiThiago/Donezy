import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_out_bloc/sign_out_bloc.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:donezy_app/src/modules/auth/blocs/watch_auth_bloc/watch_auth_bloc.dart';
import 'package:donezy_app/src/modules/auth/presentation/auth_screen.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:donezy_app/src/modules/common/infrastructure/injection/injection.dart';
import 'package:donezy_app/src/modules/global/theme_mode/blocs/set_theme_mode/set_theme_mode_bloc.dart';
import 'package:donezy_app/src/modules/global/theme_mode/blocs/watch_theme_mode/watch_theme_mode_bloc.dart';
import 'package:donezy_app/src/modules/home/initial_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Blocs de tema
        BlocProvider(create: (context) => getIt<WatchThemeModeBloc>()),
        BlocProvider(create: (context) => getIt<SetThemeModeBloc>()),
        // Blocs de autenticação
        BlocProvider(create: (context) => getIt<WatchAuthBloc>()),
        BlocProvider(create: (context) => getIt<SignInBloc>()),
        BlocProvider(create: (context) => getIt<SignUpBloc>()),
        BlocProvider(create: (context) => getIt<SignOutBloc>()),
      ],
      child: ChangeNotifierProvider<DSThemeController>(
        create: (context) => DSThemeController(),
        child: BlocListener<WatchThemeModeBloc, WatchThemeModeState>(
          listener: _onThemeModeChanged,
          child: Consumer<DSThemeController>(
            builder: (_, DSThemeController themeController, _) => MaterialApp(
              theme: themeController.themeData,
              home: BlocBuilder<WatchAuthBloc, WatchAuthState>(
                builder: (context, state) {
                  return switch (state) {
                    WatchAuthInitial() || WatchAuthLoading() => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                    Authenticated() => const InitialScreen(),
                    _ => const AuthScreen(),
                  };
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onThemeModeChanged(BuildContext context, WatchThemeModeState state) {
    final themeController = context.read<DSThemeController>();
    switch (state) {
      case WatchThemeModeSuccess(themeMode: final themeModeState):
        themeController.updateTheme(themeModeState);

      default:
    }
  }
}
