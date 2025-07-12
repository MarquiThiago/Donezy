import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:donezy_app/src/modules/note/presentation/widgets/home_drawer.dart';
import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceDim,
      drawer: const HomeDrawer(),
      appBar: AppBar(
        centerTitle: false,
        title: Text(ConstStrings.takeNotes),
        elevation: 0,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(DSSpace.small),
        separatorBuilder: (context, index) => DSBoxSpace.small(),
        itemCount: 20,
        itemBuilder: (context, index) =>
            ListTile(title: Text(ConstStrings.data)),
      ),
    );
  }
}
