// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_theme_mode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WatchThemeModeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchThemeModeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchThemeModeEvent()';
}


}

/// @nodoc
class $WatchThemeModeEventCopyWith<$Res>  {
$WatchThemeModeEventCopyWith(WatchThemeModeEvent _, $Res Function(WatchThemeModeEvent) __);
}


/// @nodoc


class _Start implements WatchThemeModeEvent {
  const _Start();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Start);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchThemeModeEvent.start()';
}


}




/// @nodoc


class _Update implements WatchThemeModeEvent {
  const _Update(this.result);
  

 final  Either<Failure<dynamic>, DSThemeModeState> result;

/// Create a copy of WatchThemeModeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCopyWith<_Update> get copyWith => __$UpdateCopyWithImpl<_Update>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Update&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'WatchThemeModeEvent.update(result: $result)';
}


}

/// @nodoc
abstract mixin class _$UpdateCopyWith<$Res> implements $WatchThemeModeEventCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) _then) = __$UpdateCopyWithImpl;
@useResult
$Res call({
 Either<Failure<dynamic>, DSThemeModeState> result
});




}
/// @nodoc
class __$UpdateCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(this._self, this._then);

  final _Update _self;
  final $Res Function(_Update) _then;

/// Create a copy of WatchThemeModeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_Update(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Either<Failure<dynamic>, DSThemeModeState>,
  ));
}


}

/// @nodoc
mixin _$WatchThemeModeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchThemeModeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchThemeModeState()';
}


}

/// @nodoc
class $WatchThemeModeStateCopyWith<$Res>  {
$WatchThemeModeStateCopyWith(WatchThemeModeState _, $Res Function(WatchThemeModeState) __);
}


/// @nodoc


class WatchThemeModeInitial implements WatchThemeModeState {
  const WatchThemeModeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchThemeModeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchThemeModeState.initial()';
}


}




/// @nodoc


class WatchThemeModeLoading implements WatchThemeModeState {
  const WatchThemeModeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchThemeModeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchThemeModeState.loading()';
}


}




/// @nodoc


class WatchThemeModeSuccess implements WatchThemeModeState {
  const WatchThemeModeSuccess(this.themeMode, this.dateTime);
  

 final  DSThemeModeState themeMode;
 final  DateTime dateTime;

/// Create a copy of WatchThemeModeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchThemeModeSuccessCopyWith<WatchThemeModeSuccess> get copyWith => _$WatchThemeModeSuccessCopyWithImpl<WatchThemeModeSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchThemeModeSuccess&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode,dateTime);

@override
String toString() {
  return 'WatchThemeModeState.success(themeMode: $themeMode, dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class $WatchThemeModeSuccessCopyWith<$Res> implements $WatchThemeModeStateCopyWith<$Res> {
  factory $WatchThemeModeSuccessCopyWith(WatchThemeModeSuccess value, $Res Function(WatchThemeModeSuccess) _then) = _$WatchThemeModeSuccessCopyWithImpl;
@useResult
$Res call({
 DSThemeModeState themeMode, DateTime dateTime
});




}
/// @nodoc
class _$WatchThemeModeSuccessCopyWithImpl<$Res>
    implements $WatchThemeModeSuccessCopyWith<$Res> {
  _$WatchThemeModeSuccessCopyWithImpl(this._self, this._then);

  final WatchThemeModeSuccess _self;
  final $Res Function(WatchThemeModeSuccess) _then;

/// Create a copy of WatchThemeModeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? themeMode = null,Object? dateTime = null,}) {
  return _then(WatchThemeModeSuccess(
null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as DSThemeModeState,null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class WatchThemeModeFailure implements WatchThemeModeState {
  const WatchThemeModeFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of WatchThemeModeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchThemeModeFailureCopyWith<WatchThemeModeFailure> get copyWith => _$WatchThemeModeFailureCopyWithImpl<WatchThemeModeFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchThemeModeFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'WatchThemeModeState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $WatchThemeModeFailureCopyWith<$Res> implements $WatchThemeModeStateCopyWith<$Res> {
  factory $WatchThemeModeFailureCopyWith(WatchThemeModeFailure value, $Res Function(WatchThemeModeFailure) _then) = _$WatchThemeModeFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<dynamic, $Res> get failure;

}
/// @nodoc
class _$WatchThemeModeFailureCopyWithImpl<$Res>
    implements $WatchThemeModeFailureCopyWith<$Res> {
  _$WatchThemeModeFailureCopyWithImpl(this._self, this._then);

  final WatchThemeModeFailure _self;
  final $Res Function(WatchThemeModeFailure) _then;

/// Create a copy of WatchThemeModeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(WatchThemeModeFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of WatchThemeModeState
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
