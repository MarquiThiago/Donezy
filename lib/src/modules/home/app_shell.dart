import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/note/presentation/pages/notes_page.dart';
import 'package:donezy_app/src/modules/task/presentation/pages/task_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  final List<Widget> pages = const [NotesPage(), TaskPage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    return MaterialApp(
      theme: DSTheme.lightThemeData,
      home: Scaffold(
        body: pages[index],
        bottomNavigationBar: Material(
          color: themeColor.surface,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: DSSpace.xLarge),
            child: GNav(
              backgroundColor: Colors.transparent,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: DSSpace.xxLarge,
                vertical: DSSpace.medium,
              ),
              gap: DSSpace.xSmall,
              tabMargin: EdgeInsets.symmetric(horizontal: DSSpace.medium),
              tabBackgroundColor: themeColor.primaryFixedDim,
              tabs: [
                GButton(icon: Icons.notes, text: 'Notes'),
                GButton(icon: Icons.task, text: 'Tasks'),
              ],
              onTabChange: (newIndex) => setState(() {
                index = newIndex;
              }),
            ),
          ),
        ),
      ),
    );
  }
}
