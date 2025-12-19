part of 'item_manager_bloc.dart';

@freezed
sealed class ItemManagerEvent with _$ItemManagerEvent {
  const factory ItemManagerEvent.add(String title, String content) = _Add;
  const factory ItemManagerEvent.delete(String id) = _Delete;
  const factory ItemManagerEvent.update(
    String id,
    String title,
    String content,
  ) = _Update;
}
