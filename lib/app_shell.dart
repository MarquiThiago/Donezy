import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:donezy_app/src/modules/auth/blocs/watch_auth_bloc/watch_auth_bloc.dart';
import 'package:donezy_app/src/modules/auth/presentation/pages/login_page.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:donezy_app/src/modules/common/infrastructure/injection/injection.dart';
import 'package:donezy_app/src/modules/home/initial_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<WatchAuthBloc>()),
        BlocProvider(create: (context) => getIt<SignInBloc>()),
        BlocProvider(create: (context) => getIt<SignUpBloc>()),
      ],
      child: MaterialApp(
        theme: DSTheme.lightThemeData,
        home: Scaffold(
          body: BlocConsumer<WatchAuthBloc, WatchAuthState>(
            listener: (context, state) => switch (state) {
              WatchAuthFailure() => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    ConstStrings.error,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: context.dSColor.error,
                ),
              ),
              _ => null,
            },
            builder: (context, state) => switch (state) {
              Authenticated() => InitialScreen(),
              Unauthenticated() => const LoginPage(),
              WatchAuthInitial() => const SizedBox.shrink(),
              WatchAuthLoading() => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              WatchAuthFailure() => const Center(
                child: Text(ConstStrings.errorGettingAuthState),
              ),
            },
          ),
        ),
      ),
    );
  }
}
