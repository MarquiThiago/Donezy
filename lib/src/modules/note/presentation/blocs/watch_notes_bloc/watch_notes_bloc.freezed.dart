// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WatchNotesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchNotesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchNotesEvent()';
}


}

/// @nodoc
class $WatchNotesEventCopyWith<$Res>  {
$WatchNotesEventCopyWith(WatchNotesEvent _, $Res Function(WatchNotesEvent) __);
}


/// @nodoc


class _Started implements WatchNotesEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchNotesEvent.started()';
}


}




/// @nodoc
mixin _$WatchNotesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchNotesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchNotesState()';
}


}

/// @nodoc
class $WatchNotesStateCopyWith<$Res>  {
$WatchNotesStateCopyWith(WatchNotesState _, $Res Function(WatchNotesState) __);
}


/// @nodoc


class WatchNotesInitial implements WatchNotesState {
  const WatchNotesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchNotesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchNotesState.initial()';
}


}




/// @nodoc


class WatchNotesLoading implements WatchNotesState {
  const WatchNotesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchNotesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchNotesState.loading()';
}


}




/// @nodoc


class WatchNotesSuccess implements WatchNotesState {
  const WatchNotesSuccess(final  List<Note> notes): _notes = notes;
  

 final  List<Note> _notes;
 List<Note> get notes {
  if (_notes is EqualUnmodifiableListView) return _notes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notes);
}


/// Create a copy of WatchNotesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchNotesSuccessCopyWith<WatchNotesSuccess> get copyWith => _$WatchNotesSuccessCopyWithImpl<WatchNotesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchNotesSuccess&&const DeepCollectionEquality().equals(other._notes, _notes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notes));

@override
String toString() {
  return 'WatchNotesState.success(notes: $notes)';
}


}

/// @nodoc
abstract mixin class $WatchNotesSuccessCopyWith<$Res> implements $WatchNotesStateCopyWith<$Res> {
  factory $WatchNotesSuccessCopyWith(WatchNotesSuccess value, $Res Function(WatchNotesSuccess) _then) = _$WatchNotesSuccessCopyWithImpl;
@useResult
$Res call({
 List<Note> notes
});




}
/// @nodoc
class _$WatchNotesSuccessCopyWithImpl<$Res>
    implements $WatchNotesSuccessCopyWith<$Res> {
  _$WatchNotesSuccessCopyWithImpl(this._self, this._then);

  final WatchNotesSuccess _self;
  final $Res Function(WatchNotesSuccess) _then;

/// Create a copy of WatchNotesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notes = null,}) {
  return _then(WatchNotesSuccess(
null == notes ? _self._notes : notes // ignore: cast_nullable_to_non_nullable
as List<Note>,
  ));
}


}

/// @nodoc


class WatchNotesFailure implements WatchNotesState {
  const WatchNotesFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of WatchNotesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchNotesFailureCopyWith<WatchNotesFailure> get copyWith => _$WatchNotesFailureCopyWithImpl<WatchNotesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchNotesFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'WatchNotesState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $WatchNotesFailureCopyWith<$Res> implements $WatchNotesStateCopyWith<$Res> {
  factory $WatchNotesFailureCopyWith(WatchNotesFailure value, $Res Function(WatchNotesFailure) _then) = _$WatchNotesFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<dynamic, $Res> get failure;

}
/// @nodoc
class _$WatchNotesFailureCopyWithImpl<$Res>
    implements $WatchNotesFailureCopyWith<$Res> {
  _$WatchNotesFailureCopyWithImpl(this._self, this._then);

  final WatchNotesFailure _self;
  final $Res Function(WatchNotesFailure) _then;

/// Create a copy of WatchNotesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(WatchNotesFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of WatchNotesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<dynamic, $Res> get failure {
  
  return $FailureCopyWith<dynamic, $Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
