import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/auth/blocs/watch_auth_bloc/watch_auth_bloc.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:donezy_app/src/modules/common/infrastructure/injection/injection.dart';
import 'package:donezy_app/src/modules/common/presentation/widgets/hidding_app_bar.dart';
import 'package:donezy_app/src/modules/note/domain/note_repository.dart';
import 'package:donezy_app/src/modules/note/presentation/blocs/item_manager_bloc/item_manager_bloc.dart';
import 'package:donezy_app/src/modules/note/presentation/widgets/item_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userUid = context.select((WatchAuthBloc bloc) {
      final state = bloc.state;
      return state is Authenticated ? state.user : null;
    });
    return BlocProvider(
      create: (context) => ItemManagerBloc(userUid, getIt<NoteRepository>()),
      child: Scaffold(
        body: HideAppBar(
          title: ConstStrings.notes,
          widget: SingleChildScrollView(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => DSBoxSpace.small(),
              itemCount: 20,
              itemBuilder: (context, index) => ItemCard(
                noteId: 'note_$index',
                title: 'Note Title ${index + 1}',
                description:
                    'This is a brief description of the note content. It provides an overview of what the note is about.',
                createdAt: DateTime.now().subtract(Duration(days: index)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
