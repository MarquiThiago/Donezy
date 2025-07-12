import 'package:donezy_app/src/modules/auth/presentation/pages/login_page.dart';
import 'package:donezy_app/src/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

final kSignInPage = GoRoute(
  path: AppRoutes.loginPath,
  name: AppRoutes.login,
  builder: (context, state) => const LoginPage(),
);
