import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceDim,
        centerTitle: false,
        title: Text(ConstStrings.makeTasks),
        elevation: 0,
      ),
    );
  }
}
