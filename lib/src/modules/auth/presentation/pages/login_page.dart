import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:donezy_app/src/modules/auth/domain/input_validators/auth_validator.dart';
import 'package:donezy_app/src/modules/auth/domain/input_validators/email_validator_translation.dart';
import 'package:donezy_app/src/modules/auth/domain/input_validators/password_validator_translation.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.onRegisterPressed});

  final VoidCallback onRegisterPressed;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is SignInAuthenticated) {
          // O WatchAuthBloc irá detectar a mudança de autenticação automaticamente
          // e redirecionar para a tela inicial
        } else if (state is SignInFailure) {
          // Mostra mensagem de erro
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                ConstStrings.error,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              backgroundColor: context.dSColor.error,
            ),
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: DSSpace.xxLarge,
                ),
                child: Column(
                  spacing: DSSpace.xLarge,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      Icons.lock_outline_rounded,
                      size: DSSize.iconSizeXXLarge,
                      color: colorScheme.primary,
                    ),
                    Text(
                      ConstStrings.signIn,
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
                    BlocBuilder<SignInBloc, SignInState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: state is SignInLoading
                              ? null
                              : () => _onLoginPressed(context),
                          child: state is SignInLoading
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator.adaptive(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Text(ConstStrings.signIn),
                        );
                      },
                    ),
                    Row(
                      children: [
                        const Expanded(child: Divider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: DSSpace.small,
                          ),
                          child: Text(
                            ConstStrings.or,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        const Expanded(child: Divider()),
                      ],
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     _SocialIconButton(
                    //       icon: Icons.close, // X (Twitter)
                    //       onTap: () {},
                    //     ),
                    //     const SizedBox(width: DSSpace.large),
                    //     _SocialIconButton(
                    //       icon: Icons.facebook,
                    //       color: Colors.blue[800],
                    //       onTap: () {},
                    //     ),
                    //     const SizedBox(width: DSSpace.large),
                    //     _SocialIconButton(
                    //       icon: Icons.g_mobiledata,
                    //       color: Colors.red[700],
                    //       onTap: () {},
                    //     ),
                    //   ],
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ConstStrings.newToDonezy,
                          style: theme.textTheme.bodyMedium,
                        ),
                        GestureDetector(
                          onTap: widget.onRegisterPressed,
                          child: Text(
                            ConstStrings.register,
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
      ),
    );
  }

  void _onLoginPressed(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<SignInBloc>().add(
        SignInEvent.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        ),
      );
    }
  }
}

// class _SocialIconButton extends StatelessWidget {
//   final IconData icon;
//   final Color? color;
//   final VoidCallback onTap;

//   const _SocialIconButton({
//     required this.icon,
//     required this.onTap,
//     this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       borderRadius: BorderRadius.circular(24),
//       onTap: onTap,
//       child: Container(
//         width: 48,
//         height: 48,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           border: Border.all(color: Colors.grey.shade300),
//         ),
//         child: Icon(icon, color: color ?? Colors.black, size: 28),
//       ),
//     );
//   }
// }
