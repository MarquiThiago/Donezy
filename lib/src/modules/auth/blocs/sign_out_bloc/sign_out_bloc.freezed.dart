// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_out_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignOutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignOutEvent()';
}


}

/// @nodoc
class $SignOutEventCopyWith<$Res>  {
$SignOutEventCopyWith(SignOutEvent _, $Res Function(SignOutEvent) __);
}


/// @nodoc


class _SignOut implements SignOutEvent {
  const _SignOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignOutEvent.signOut()';
}


}




/// @nodoc
mixin _$SignOutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignOutState()';
}


}

/// @nodoc
class $SignOutStateCopyWith<$Res>  {
$SignOutStateCopyWith(SignOutState _, $Res Function(SignOutState) __);
}


/// @nodoc


class SignOutInitial implements SignOutState {
  const SignOutInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignOutState.initial()';
}


}




/// @nodoc


class SignOutLoading implements SignOutState {
  const SignOutLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignOutState.loading()';
}


}




/// @nodoc


class SignOutSuccess implements SignOutState {
  const SignOutSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignOutState.success()';
}


}




/// @nodoc


class SignOutFailure implements SignOutState {
  const SignOutFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of SignOutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignOutFailureCopyWith<SignOutFailure> get copyWith => _$SignOutFailureCopyWithImpl<SignOutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SignOutState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SignOutFailureCopyWith<$Res> implements $SignOutStateCopyWith<$Res> {
  factory $SignOutFailureCopyWith(SignOutFailure value, $Res Function(SignOutFailure) _then) = _$SignOutFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<dynamic, $Res> get failure;

}
/// @nodoc
class _$SignOutFailureCopyWithImpl<$Res>
    implements $SignOutFailureCopyWith<$Res> {
  _$SignOutFailureCopyWithImpl(this._self, this._then);

  final SignOutFailure _self;
  final $Res Function(SignOutFailure) _then;

/// Create a copy of SignOutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SignOutFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SignOutState
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
