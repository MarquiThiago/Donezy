part of 'watch_notes_bloc.dart';

@freezed
sealed class WatchNotesEvent with _$WatchNotesEvent {
  const factory WatchNotesEvent.started() = _Started;
}
