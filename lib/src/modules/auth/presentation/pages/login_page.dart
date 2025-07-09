import 'package:design_system/design_system_export.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: DSSpace.xxLarge),
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
                  'Sign In',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Phone/Email Id',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility_off_outlined),
                      onPressed: () {},
                    ),
                  ),
                  obscureText: true,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Sign In')),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: DSSpace.small,
                      ),
                      child: Text('OR', style: theme.textTheme.labelLarge),
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
                    Text('New to Donezy? ', style: theme.textTheme.bodyMedium),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Register',
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
    );
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
