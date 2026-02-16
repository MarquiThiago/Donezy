part of 'item_manager_bloc.dart';

@freezed
class ItemManagerState with _$ItemManagerState {
  const factory ItemManagerState.initial() = ItemManagerInitial;
  const factory ItemManagerState.loading() = ItemManagerLoading;
  const factory ItemManagerState.success(Note note) = ItemManagerSuccess;
  const factory ItemManagerState.failure(Failure failure) = ItemManagerFailure;
}
