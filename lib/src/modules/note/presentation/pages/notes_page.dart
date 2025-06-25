import 'package:design_system/design_system_export.dart';
import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Take Notes"),
        elevation: 0,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(DSSpace.small),
        separatorBuilder: (context, index) => DSBoxSpace.small(),
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(title: Text('data')),
      ),
    );
  }
}
