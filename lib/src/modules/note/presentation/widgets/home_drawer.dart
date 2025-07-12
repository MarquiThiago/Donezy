import 'package:donezy_app/src/modules/auth/presentation/widgets/sign_out_tile.dart';
import 'package:donezy_app/src/modules/common/presentation/widgets/theme_switcher_button.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [Text('Home'), ThemeSwitcherButton(), SignOutTile()],
        ),
      ),
    );
  }
}
