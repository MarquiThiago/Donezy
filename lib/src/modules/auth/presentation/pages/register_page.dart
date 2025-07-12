import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:donezy_app/src/modules/auth/domain/input_validators/auth_validator.dart';
import 'package:donezy_app/src/modules/auth/domain/input_validators/email_validator_translation.dart';
import 'package:donezy_app/src/modules/auth/domain/input_validators/password_validator_translation.dart';
import 'package:donezy_app/src/modules/auth/presentation/pages/login_page.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:donezy_app/src/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isPasswordVisible = true;
  bool _isConfirmPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: DSSpace.xxLarge),
              child: Column(
                spacing: DSSpace.xLarge,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.person_add_alt_1_rounded,
                    size: DSSize.iconSizeXXLarge,
                    color: colorScheme.primary,
                  ),
                  Text(
                    ConstStrings.register,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                    controller: _emailController,
                    validator: (value) => AuthValidators.validateEmail(
                      value,
                    )?.first.translate(context),
                    decoration: const InputDecoration(
                      labelText: ConstStrings.email,
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    obscureText: _isPasswordVisible,
                    controller: _passwordController,
                    validator: (value) => AuthValidators.validatePassword(
                      value,
                    )?.first.translate(context),
                    decoration: InputDecoration(
                      labelText: ConstStrings.password,
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                        onPressed: () => setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        }),
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: _isConfirmPasswordVisible,
                    controller: _confirmPasswordController,
                    validator: (value) =>
                        AuthValidators.validateConfirmPassword(
                          value,
                          _passwordController.text,
                        )?.first.translate(context),
                    decoration: InputDecoration(
                      labelText: ConstStrings.confirmPassword,
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isConfirmPasswordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                        onPressed: () => setState(() {
                          _isConfirmPasswordVisible =
                              !_isConfirmPasswordVisible;
                        }),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _onRegisterPressed(context),
                    child: const Text(ConstStrings.register),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ConstStrings.alreadyHaveAnAccount,
                        style: theme.textTheme.bodyMedium,
                      ),
                      GestureDetector(
                        onTap: () => context.go(AppRoutes.loginPath),
                        child: Text(
                          ConstStrings.signIn,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onRegisterPressed(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<SignUpBloc>().add(
        SignUpEvent.signUpWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        ),
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text(ConstStrings.register)));
    }
  }
}
