import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';

import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          ConstStrings.takeNotes,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surfaceDim,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: DSSpace.small),
        child: ListView.separated(
          separatorBuilder: (context, index) => DSBoxSpace.small(),
          itemCount: 20,
          itemBuilder: (context, index) =>
              ListTile(title: Text(ConstStrings.data)),
        ),
      ),
    );
  }
}
