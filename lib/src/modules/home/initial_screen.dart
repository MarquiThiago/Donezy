import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:donezy_app/src/modules/note/presentation/pages/notes_page.dart';
import 'package:donezy_app/src/modules/profile/presentation/pages/profile_page.dart';
import 'package:donezy_app/src/modules/task/presentation/pages/task_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  final List<Widget> pages = const [NotesPage(), TaskPage(), ProfilePage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: Material(
        color: Theme.of(context).colorScheme.surface,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: DSSpace.medium,
            horizontal: DSSpace.medium,
          ),
          child: GNav(
            backgroundColor: Theme.of(context).colorScheme.surface,
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: DSSpace.large,
              vertical: DSSpace.medium,
            ),
            gap: DSSpace.xSmall,
            tabMargin: EdgeInsets.symmetric(horizontal: DSSpace.small),
            tabBackgroundColor: Theme.of(context).colorScheme.primary,
            activeColor: Theme.of(context).colorScheme.onPrimary,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            tabs: [
              GButton(icon: Icons.notes, text: ConstStrings.notes),
              GButton(icon: Icons.task, text: ConstStrings.tasks),
              GButton(icon: Icons.person, text: ConstStrings.profile),
            ],
            onTabChange: (newIndex) => setState(() {
              index = newIndex;
            }),
          ),
        ),
      ),
    );
  }
}
