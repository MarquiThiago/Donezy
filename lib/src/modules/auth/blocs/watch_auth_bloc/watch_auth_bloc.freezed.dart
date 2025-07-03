// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WatchAuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchAuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchAuthEvent()';
}


}

/// @nodoc
class $WatchAuthEventCopyWith<$Res>  {
$WatchAuthEventCopyWith(WatchAuthEvent _, $Res Function(WatchAuthEvent) __);
}


/// @nodoc


class _WatchAuthStatus implements WatchAuthEvent {
  const _WatchAuthStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchAuthStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchAuthEvent.watchAuthStatus()';
}


}




/// @nodoc
mixin _$WatchAuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchAuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchAuthState()';
}


}

/// @nodoc
class $WatchAuthStateCopyWith<$Res>  {
$WatchAuthStateCopyWith(WatchAuthState _, $Res Function(WatchAuthState) __);
}


/// @nodoc


class WatchAuthInitial implements WatchAuthState {
  const WatchAuthInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchAuthInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchAuthState.initial()';
}


}




/// @nodoc


class WatchAuthLoading implements WatchAuthState {
  const WatchAuthLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchAuthLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchAuthState.loading()';
}


}




/// @nodoc


class Authenticated implements WatchAuthState {
  const Authenticated({required this.userUid});
  

 final  UserUid userUid;

/// Create a copy of WatchAuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticatedCopyWith<Authenticated> get copyWith => _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Authenticated&&(identical(other.userUid, userUid) || other.userUid == userUid));
}


@override
int get hashCode => Object.hash(runtimeType,userUid);

@override
String toString() {
  return 'WatchAuthState.authenticated(userUid: $userUid)';
}


}

/// @nodoc
abstract mixin class $AuthenticatedCopyWith<$Res> implements $WatchAuthStateCopyWith<$Res> {
  factory $AuthenticatedCopyWith(Authenticated value, $Res Function(Authenticated) _then) = _$AuthenticatedCopyWithImpl;
@useResult
$Res call({
 UserUid userUid
});




}
/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(this._self, this._then);

  final Authenticated _self;
  final $Res Function(Authenticated) _then;

/// Create a copy of WatchAuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userUid = null,}) {
  return _then(Authenticated(
userUid: null == userUid ? _self.userUid : userUid // ignore: cast_nullable_to_non_nullable
as UserUid,
  ));
}


}

/// @nodoc


class Unauthenticated implements WatchAuthState {
  const Unauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchAuthState.unauthenticated()';
}


}




/// @nodoc


class WatchAuthFailure implements WatchAuthState {
  const WatchAuthFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of WatchAuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchAuthFailureCopyWith<WatchAuthFailure> get copyWith => _$WatchAuthFailureCopyWithImpl<WatchAuthFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchAuthFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'WatchAuthState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $WatchAuthFailureCopyWith<$Res> implements $WatchAuthStateCopyWith<$Res> {
  factory $WatchAuthFailureCopyWith(WatchAuthFailure value, $Res Function(WatchAuthFailure) _then) = _$WatchAuthFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<dynamic, $Res> get failure;

}
/// @nodoc
class _$WatchAuthFailureCopyWithImpl<$Res>
    implements $WatchAuthFailureCopyWith<$Res> {
  _$WatchAuthFailureCopyWithImpl(this._self, this._then);

  final WatchAuthFailure _self;
  final $Res Function(WatchAuthFailure) _then;

/// Create a copy of WatchAuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(WatchAuthFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of WatchAuthState
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
