import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:donezy_app/src/modules/global/theme_mode/blocs/set_theme_mode/set_theme_mode_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeSwitcherButton extends StatelessWidget {
  const ThemeSwitcherButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DSThemeController>(
      builder: (context, DSThemeController themeController, child) {
        final themeMode = themeController.appThemeMode;

        return ListTile(
          leading: const Icon(Icons.color_lens, size: DSSize.iconSize),
          onTap: () => onTap(context, themeMode),
          title: Text(ConstStrings.theme),
          subtitle: Text(
            themeMode.map(
              light: () => ConstStrings.light,
              dark: () => ConstStrings.dark,
              system: () => ConstStrings.system,
            ),
          ),
          trailing: Icon(
            themeMode.map(
              light: () => Icons.light_mode,
              dark: () => Icons.dark_mode,
              system: () => Icons.brightness_auto,
            ),
            size: DSSize.iconSize,
          ),
        );
      },
    );
  }

  void onTap(BuildContext context, DSThemeMode themeMode) {
    final newThemeMode = themeMode.map(
      light: () => DSThemeMode.dark,
      dark: () => DSThemeMode.system,
      system: () => DSThemeMode.light,
    );

    context.read<SetThemeModeBloc>().add(
      SetThemeModeEvent.setThemeMode(newThemeMode),
    );
  }
}
