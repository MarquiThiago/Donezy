import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/home/presentation/widgets/floating_bottom_nav_bar.dart';
import 'package:donezy_app/src/modules/note/presentation/pages/notes_page.dart';
import 'package:donezy_app/src/modules/profile/presentation/pages/profile_page.dart';
import 'package:donezy_app/src/modules/task/presentation/pages/task_page.dart';
import 'package:flutter/material.dart';

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
      body: Stack(
        children: [
          pages[index],
          Positioned(
            bottom: DSSpace.xLarge,
            left: 30,
            right: 10,
            child: FloatingBottomNavBar(
              index: index,
              onTabChange: (newIndex) => setState(() {
                index = newIndex;
              }),
            ),
          ),
        ],
      ),
    );
  }
}
