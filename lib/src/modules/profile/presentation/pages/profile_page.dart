import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/auth/presentation/widgets/sign_out_tile.dart';
import 'package:donezy_app/src/modules/common/presentation/widgets/theme_switcher_button.dart';
import 'package:donezy_app/src/modules/profile/presentation/widgets/user_info_tile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(DSSpace.medium),
              child: Text(
                'Profile',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            UserInfoTile(),
            DSBoxSpace.large(),
            ListTile(
              leading: const Icon(Icons.lock_outline_rounded),
              title: Text('Change Password'),
            ),
            DSDivider.shrinkWraped(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text('Settings'),
            ),
            DSDivider.shrinkWraped(),
            SignOutTile(),
            DSDivider.shrinkWraped(),
            ThemeSwitcherButton(),
          ],
        ),
      ),
    );
  }
}
