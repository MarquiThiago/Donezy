// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_theme_mode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetThemeModeEvent {

 DSThemeMode get newThemeMode;
/// Create a copy of SetThemeModeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetThemeModeEventCopyWith<SetThemeModeEvent> get copyWith => _$SetThemeModeEventCopyWithImpl<SetThemeModeEvent>(this as SetThemeModeEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetThemeModeEvent&&(identical(other.newThemeMode, newThemeMode) || other.newThemeMode == newThemeMode));
}


@override
int get hashCode => Object.hash(runtimeType,newThemeMode);

@override
String toString() {
  return 'SetThemeModeEvent(newThemeMode: $newThemeMode)';
}


}

/// @nodoc
abstract mixin class $SetThemeModeEventCopyWith<$Res>  {
  factory $SetThemeModeEventCopyWith(SetThemeModeEvent value, $Res Function(SetThemeModeEvent) _then) = _$SetThemeModeEventCopyWithImpl;
@useResult
$Res call({
 DSThemeMode newThemeMode
});




}
/// @nodoc
class _$SetThemeModeEventCopyWithImpl<$Res>
    implements $SetThemeModeEventCopyWith<$Res> {
  _$SetThemeModeEventCopyWithImpl(this._self, this._then);

  final SetThemeModeEvent _self;
  final $Res Function(SetThemeModeEvent) _then;

/// Create a copy of SetThemeModeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newThemeMode = null,}) {
  return _then(_self.copyWith(
newThemeMode: null == newThemeMode ? _self.newThemeMode : newThemeMode // ignore: cast_nullable_to_non_nullable
as DSThemeMode,
  ));
}

}


/// @nodoc


class _SetThemeMode implements SetThemeModeEvent {
  const _SetThemeMode(this.newThemeMode);
  

@override final  DSThemeMode newThemeMode;

/// Create a copy of SetThemeModeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetThemeModeCopyWith<_SetThemeMode> get copyWith => __$SetThemeModeCopyWithImpl<_SetThemeMode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetThemeMode&&(identical(other.newThemeMode, newThemeMode) || other.newThemeMode == newThemeMode));
}


@override
int get hashCode => Object.hash(runtimeType,newThemeMode);

@override
String toString() {
  return 'SetThemeModeEvent.setThemeMode(newThemeMode: $newThemeMode)';
}


}

/// @nodoc
abstract mixin class _$SetThemeModeCopyWith<$Res> implements $SetThemeModeEventCopyWith<$Res> {
  factory _$SetThemeModeCopyWith(_SetThemeMode value, $Res Function(_SetThemeMode) _then) = __$SetThemeModeCopyWithImpl;
@override @useResult
$Res call({
 DSThemeMode newThemeMode
});




}
/// @nodoc
class __$SetThemeModeCopyWithImpl<$Res>
    implements _$SetThemeModeCopyWith<$Res> {
  __$SetThemeModeCopyWithImpl(this._self, this._then);

  final _SetThemeMode _self;
  final $Res Function(_SetThemeMode) _then;

/// Create a copy of SetThemeModeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newThemeMode = null,}) {
  return _then(_SetThemeMode(
null == newThemeMode ? _self.newThemeMode : newThemeMode // ignore: cast_nullable_to_non_nullable
as DSThemeMode,
  ));
}


}

/// @nodoc
mixin _$SetThemeModeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetThemeModeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetThemeModeState()';
}


}

/// @nodoc
class $SetThemeModeStateCopyWith<$Res>  {
$SetThemeModeStateCopyWith(SetThemeModeState _, $Res Function(SetThemeModeState) __);
}


/// @nodoc


class SetThemeModeInitial implements SetThemeModeState {
  const SetThemeModeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetThemeModeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetThemeModeState.initial()';
}


}




/// @nodoc


class SetThemeModeLoading implements SetThemeModeState {
  const SetThemeModeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetThemeModeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetThemeModeState.loading()';
}


}




/// @nodoc


class SetThemeModeSuccess implements SetThemeModeState {
  const SetThemeModeSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetThemeModeSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetThemeModeState.success()';
}


}




/// @nodoc


class SetThemeModeFailure implements SetThemeModeState {
  const SetThemeModeFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of SetThemeModeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetThemeModeFailureCopyWith<SetThemeModeFailure> get copyWith => _$SetThemeModeFailureCopyWithImpl<SetThemeModeFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetThemeModeFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SetThemeModeState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SetThemeModeFailureCopyWith<$Res> implements $SetThemeModeStateCopyWith<$Res> {
  factory $SetThemeModeFailureCopyWith(SetThemeModeFailure value, $Res Function(SetThemeModeFailure) _then) = _$SetThemeModeFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<dynamic, $Res> get failure;

}
/// @nodoc
class _$SetThemeModeFailureCopyWithImpl<$Res>
    implements $SetThemeModeFailureCopyWith<$Res> {
  _$SetThemeModeFailureCopyWithImpl(this._self, this._then);

  final SetThemeModeFailure _self;
  final $Res Function(SetThemeModeFailure) _then;

/// Create a copy of SetThemeModeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SetThemeModeFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SetThemeModeState
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
