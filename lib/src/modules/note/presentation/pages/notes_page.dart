import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/auth/blocs/watch_auth_bloc/watch_auth_bloc.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:donezy_app/src/modules/common/infrastructure/injection/injection.dart';
import 'package:donezy_app/src/modules/common/presentation/widgets/hidding_app_bar.dart';
import 'package:donezy_app/src/modules/note/domain/note_repository.dart';
import 'package:donezy_app/src/modules/note/presentation/blocs/watch_notes_bloc/watch_notes_bloc.dart';
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
      create: (context) =>
          WatchNotesBloc(getIt<NoteRepository>(), UserUid(userUid!.uid))
            ..add(const WatchNotesEvent.started()),
      child: Scaffold(
        body: HideAppBar(
          title: ConstStrings.notes,
          widget: SingleChildScrollView(
            child: BlocBuilder<WatchNotesBloc, WatchNotesState>(
              builder: (context, state) => switch (state) {
                WatchNotesInitial() => const Center(
                  child: CircularProgressIndicator(),
                ),
                WatchNotesLoading() => const Center(
                  child: CircularProgressIndicator(),
                ),
                WatchNotesFailure(failure: final failure) => Center(
                  child: Text('Error: ${failure.toString()}'),
                ),
                WatchNotesSuccess(notes: final notes) => ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => DSBoxSpace.small(),
                  itemCount: notes.length,
                  itemBuilder: (context, index) {
                    if (notes.isEmpty) {
                      return const Center(child: Text('No notes available.'));
                    }
                    final note = notes[index];
                    return ItemCard(
                      noteId: note.uid,
                      title: note.title,
                      description: note.content,
                      createdAt: note.dateCreated,
                    );
                  },
                ),
              },
            ),
          ),
        ),
      ),
    );
  }
}
