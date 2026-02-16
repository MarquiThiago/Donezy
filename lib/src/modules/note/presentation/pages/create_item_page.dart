import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/auth/blocs/watch_auth_bloc/watch_auth_bloc.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:donezy_app/src/modules/common/infrastructure/injection/injection.dart';
import 'package:donezy_app/src/modules/note/domain/note_repository.dart';
import 'package:donezy_app/src/modules/note/presentation/blocs/item_manager_bloc/item_manager_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateItemPage extends StatelessWidget {
  const CreateItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final textStyle = Theme.of(context).textTheme;

    final userUid = context.select((WatchAuthBloc bloc) {
      final state = bloc.state;
      return state is Authenticated ? state.user : null;
    });
    return BlocProvider(
      create: (context) =>
          ItemManagerBloc(UserUid(userUid!.uid), getIt<NoteRepository>()),
      child: Builder(
        builder: (context) => Column(
          children: [
            Text('Create Item Page', style: textStyle.headlineLarge),
            DSBoxSpace.large(),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Item Title',
                border: OutlineInputBorder(),
              ),
            ),
            DSBoxSpace(),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Item Description',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            DSBoxSpace.large(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.read<ItemManagerBloc>().add(
                  ItemManagerEvent.add(
                    titleController.text,
                    descriptionController.text,
                  ),
                );
              },
              child: const Text('Create Item'),
            ),
          ],
        ),
      ),
    );
  }
}
