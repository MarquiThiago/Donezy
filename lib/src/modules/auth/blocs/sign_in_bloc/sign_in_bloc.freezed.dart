// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInEvent {

 String get email; String get password;
/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInEventCopyWith<SignInEvent> get copyWith => _$SignInEventCopyWithImpl<SignInEvent>(this as SignInEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'SignInEvent(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignInEventCopyWith<$Res>  {
  factory $SignInEventCopyWith(SignInEvent value, $Res Function(SignInEvent) _then) = _$SignInEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$SignInEventCopyWithImpl<$Res>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._self, this._then);

  final SignInEvent _self;
  final $Res Function(SignInEvent) _then;

/// Create a copy of SignInEvent
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


class _SignInWithEmailAndPassword implements SignInEvent {
  const _SignInWithEmailAndPassword({required this.email, required this.password});
  

@override final  String email;
@override final  String password;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInWithEmailAndPasswordCopyWith<_SignInWithEmailAndPassword> get copyWith => __$SignInWithEmailAndPasswordCopyWithImpl<_SignInWithEmailAndPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInWithEmailAndPassword&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'SignInEvent.signInWithEmailAndPassword(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignInWithEmailAndPasswordCopyWith<$Res> implements $SignInEventCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordCopyWith(_SignInWithEmailAndPassword value, $Res Function(_SignInWithEmailAndPassword) _then) = __$SignInWithEmailAndPasswordCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordCopyWith<$Res> {
  __$SignInWithEmailAndPasswordCopyWithImpl(this._self, this._then);

  final _SignInWithEmailAndPassword _self;
  final $Res Function(_SignInWithEmailAndPassword) _then;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_SignInWithEmailAndPassword(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SignInState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState()';
}


}

/// @nodoc
class $SignInStateCopyWith<$Res>  {
$SignInStateCopyWith(SignInState _, $Res Function(SignInState) __);
}


/// @nodoc


class SignInInitial implements SignInState {
  const SignInInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState.initial()';
}


}




/// @nodoc


class SignInLoading implements SignInState {
  const SignInLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState.loading()';
}


}




/// @nodoc


class SignInAuthenticated implements SignInState {
  const SignInAuthenticated({required this.userUid});
  

 final  UserUid userUid;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInAuthenticatedCopyWith<SignInAuthenticated> get copyWith => _$SignInAuthenticatedCopyWithImpl<SignInAuthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInAuthenticated&&(identical(other.userUid, userUid) || other.userUid == userUid));
}


@override
int get hashCode => Object.hash(runtimeType,userUid);

@override
String toString() {
  return 'SignInState.authenticated(userUid: $userUid)';
}


}

/// @nodoc
abstract mixin class $SignInAuthenticatedCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $SignInAuthenticatedCopyWith(SignInAuthenticated value, $Res Function(SignInAuthenticated) _then) = _$SignInAuthenticatedCopyWithImpl;
@useResult
$Res call({
 UserUid userUid
});




}
/// @nodoc
class _$SignInAuthenticatedCopyWithImpl<$Res>
    implements $SignInAuthenticatedCopyWith<$Res> {
  _$SignInAuthenticatedCopyWithImpl(this._self, this._then);

  final SignInAuthenticated _self;
  final $Res Function(SignInAuthenticated) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userUid = null,}) {
  return _then(SignInAuthenticated(
userUid: null == userUid ? _self.userUid : userUid // ignore: cast_nullable_to_non_nullable
as UserUid,
  ));
}


}

/// @nodoc


class SignInUnauthenticated implements SignInState {
  const SignInUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState.unauthenticated()';
}


}




/// @nodoc


class SignInFailure implements SignInState {
  const SignInFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInFailureCopyWith<SignInFailure> get copyWith => _$SignInFailureCopyWithImpl<SignInFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SignInState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SignInFailureCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $SignInFailureCopyWith(SignInFailure value, $Res Function(SignInFailure) _then) = _$SignInFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<dynamic, $Res> get failure;

}
/// @nodoc
class _$SignInFailureCopyWithImpl<$Res>
    implements $SignInFailureCopyWith<$Res> {
  _$SignInFailureCopyWithImpl(this._self, this._then);

  final SignInFailure _self;
  final $Res Function(SignInFailure) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SignInFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SignInState
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
