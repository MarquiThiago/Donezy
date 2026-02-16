import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_out_bloc/sign_out_bloc.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:donezy_app/src/modules/auth/blocs/watch_auth_bloc/watch_auth_bloc.dart';
import 'package:donezy_app/src/modules/common/infrastructure/injection/injection.dart';
import 'package:donezy_app/src/modules/global/theme_mode/blocs/set_theme_mode/set_theme_mode_bloc.dart';
import 'package:donezy_app/src/modules/global/theme_mode/blocs/watch_theme_mode/watch_theme_mode_bloc.dart';
import 'package:donezy_app/src/modules/splash_screen/presentation/blocs/splash_bloc/splash_bloc.dart';
import 'package:donezy_app/src/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key});

  @override
  Widget build(BuildContext context) {
    final WatchAuthBloc authBloc = getIt<WatchAuthBloc>();
    final SplashBloc splashBloc = SplashBloc();
    final goRouter = AppRouter.createRouter(authBloc, splashBloc);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<WatchThemeModeBloc>()),
        BlocProvider(create: (context) => getIt<SetThemeModeBloc>()),
        BlocProvider(create: (context) => authBloc),
        BlocProvider(create: (context) => getIt<SignInBloc>()),
        BlocProvider(create: (context) => getIt<SignUpBloc>()),
        BlocProvider(create: (context) => getIt<SignOutBloc>()),
        BlocProvider(create: (context) => splashBloc),
      ],
      child: ChangeNotifierProvider<DSThemeController>(
        create: (context) => DSThemeController(),
        child: BlocListener<WatchThemeModeBloc, WatchThemeModeState>(
          listener: _onThemeModeChanged,
          child: Consumer<DSThemeController>(
            builder: (_, DSThemeController themeController, __) =>
                MaterialApp.router(
                  theme: themeController.themeData,
                  routerConfig: goRouter,
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
