// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpEvent {

 String get email; String get password;
/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpEventCopyWith<SignUpEvent> get copyWith => _$SignUpEventCopyWithImpl<SignUpEvent>(this as SignUpEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'SignUpEvent(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignUpEventCopyWith<$Res>  {
  factory $SignUpEventCopyWith(SignUpEvent value, $Res Function(SignUpEvent) _then) = _$SignUpEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$SignUpEventCopyWithImpl<$Res>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._self, this._then);

  final SignUpEvent _self;
  final $Res Function(SignUpEvent) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _SignUpWithEmailAndPassword implements SignUpEvent {
  const _SignUpWithEmailAndPassword({required this.email, required this.password});
  

@override final  String email;
@override final  String password;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpWithEmailAndPasswordCopyWith<_SignUpWithEmailAndPassword> get copyWith => __$SignUpWithEmailAndPasswordCopyWithImpl<_SignUpWithEmailAndPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpWithEmailAndPassword&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'SignUpEvent.signUpWithEmailAndPassword(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignUpWithEmailAndPasswordCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory _$SignUpWithEmailAndPasswordCopyWith(_SignUpWithEmailAndPassword value, $Res Function(_SignUpWithEmailAndPassword) _then) = __$SignUpWithEmailAndPasswordCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$SignUpWithEmailAndPasswordCopyWithImpl<$Res>
    implements _$SignUpWithEmailAndPasswordCopyWith<$Res> {
  __$SignUpWithEmailAndPasswordCopyWithImpl(this._self, this._then);

  final _SignUpWithEmailAndPassword _self;
  final $Res Function(_SignUpWithEmailAndPassword) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_SignUpWithEmailAndPassword(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SignUpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState()';
}


}

/// @nodoc
class $SignUpStateCopyWith<$Res>  {
$SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}


/// @nodoc


class SignUpInitial implements SignUpState {
  const SignUpInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.initial()';
}


}




/// @nodoc


class SignUpLoading implements SignUpState {
  const SignUpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.loading()';
}


}




/// @nodoc


class SignUpSuccess implements SignUpState {
  const SignUpSuccess({required this.userUid});
  

 final  UserUid userUid;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpSuccessCopyWith<SignUpSuccess> get copyWith => _$SignUpSuccessCopyWithImpl<SignUpSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSuccess&&(identical(other.userUid, userUid) || other.userUid == userUid));
}


@override
int get hashCode => Object.hash(runtimeType,userUid);

@override
String toString() {
  return 'SignUpState.success(userUid: $userUid)';
}


}

/// @nodoc
abstract mixin class $SignUpSuccessCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpSuccessCopyWith(SignUpSuccess value, $Res Function(SignUpSuccess) _then) = _$SignUpSuccessCopyWithImpl;
@useResult
$Res call({
 UserUid userUid
});




}
/// @nodoc
class _$SignUpSuccessCopyWithImpl<$Res>
    implements $SignUpSuccessCopyWith<$Res> {
  _$SignUpSuccessCopyWithImpl(this._self, this._then);

  final SignUpSuccess _self;
  final $Res Function(SignUpSuccess) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userUid = null,}) {
  return _then(SignUpSuccess(
userUid: null == userUid ? _self.userUid : userUid // ignore: cast_nullable_to_non_nullable
as UserUid,
  ));
}


}

/// @nodoc


class SignUpFailure implements SignUpState {
  const SignUpFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpFailureCopyWith<SignUpFailure> get copyWith => _$SignUpFailureCopyWithImpl<SignUpFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SignUpState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SignUpFailureCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpFailureCopyWith(SignUpFailure value, $Res Function(SignUpFailure) _then) = _$SignUpFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<dynamic, $Res> get failure;

}
/// @nodoc
class _$SignUpFailureCopyWithImpl<$Res>
    implements $SignUpFailureCopyWith<$Res> {
  _$SignUpFailureCopyWithImpl(this._self, this._then);

  final SignUpFailure _self;
  final $Res Function(SignUpFailure) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SignUpFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SignUpState
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
