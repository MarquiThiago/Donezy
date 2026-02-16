part of 'watch_notes_bloc.dart';

@freezed
sealed class WatchNotesState with _$WatchNotesState {
  const factory WatchNotesState.initial() = WatchNotesInitial;
  const factory WatchNotesState.loading() = WatchNotesLoading;
  const factory WatchNotesState.success(List<Note> notes) = WatchNotesSuccess;
  const factory WatchNotesState.failure(Failure failure) = WatchNotesFailure;
}
