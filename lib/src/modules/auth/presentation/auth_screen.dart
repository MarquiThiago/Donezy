import 'package:donezy_app/src/modules/auth/presentation/pages/login_page.dart';
import 'package:donezy_app/src/modules/auth/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLoginPage = true;
  @override
  Widget build(BuildContext context) {
    return isLoginPage
        ? LoginPage(
            onRegisterPressed: () => setState(() => isLoginPage = false),
          )
        : RegisterPage(
            onLoginPressed: () => setState(() => isLoginPage = true),
          );
  }
}
