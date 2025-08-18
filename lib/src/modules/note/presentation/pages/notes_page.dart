import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';

import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

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
                ConstStrings.takeNotes,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => DSBoxSpace.small(),
                itemCount: 20,
                itemBuilder: (context, index) =>
                    ListTile(title: Text(ConstStrings.data)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
