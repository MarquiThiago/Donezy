import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/auth/presentation/pages/login_page.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:donezy_app/src/modules/note/presentation/pages/notes_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  final List<Widget> pages = const [NotesPage(), LoginPage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: DSSpace.xLarge),
          child: GNav(
            backgroundColor: Colors.transparent,
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: DSSpace.xxLarge,
              vertical: DSSpace.medium,
            ),
            gap: DSSpace.xSmall,
            tabMargin: EdgeInsets.symmetric(horizontal: DSSpace.small),
            tabBackgroundColor: Colors.indigoAccent,
            tabs: [
              GButton(icon: Icons.notes, text: ConstStrings.notes),
              GButton(icon: Icons.task, text: ConstStrings.tasks),
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
