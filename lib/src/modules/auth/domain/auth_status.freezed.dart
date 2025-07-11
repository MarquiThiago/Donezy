// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthStatus()';
}


}

/// @nodoc
class $AuthStatusCopyWith<$Res>  {
$AuthStatusCopyWith(AuthStatus _, $Res Function(AuthStatus) __);
}


/// @nodoc


class AuthStatusUnauthenticated implements AuthStatus {
  const AuthStatusUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthStatusUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthStatus.unauthenticated()';
}


}




/// @nodoc


class AuthStatusAuthenticated implements AuthStatus {
  const AuthStatusAuthenticated({required this.user});
  

 final  User user;

/// Create a copy of AuthStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStatusAuthenticatedCopyWith<AuthStatusAuthenticated> get copyWith => _$AuthStatusAuthenticatedCopyWithImpl<AuthStatusAuthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthStatusAuthenticated&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthStatus.authenticated(user: $user)';
}


}

/// @nodoc
abstract mixin class $AuthStatusAuthenticatedCopyWith<$Res> implements $AuthStatusCopyWith<$Res> {
  factory $AuthStatusAuthenticatedCopyWith(AuthStatusAuthenticated value, $Res Function(AuthStatusAuthenticated) _then) = _$AuthStatusAuthenticatedCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class _$AuthStatusAuthenticatedCopyWithImpl<$Res>
    implements $AuthStatusAuthenticatedCopyWith<$Res> {
  _$AuthStatusAuthenticatedCopyWithImpl(this._self, this._then);

  final AuthStatusAuthenticated _self;
  final $Res Function(AuthStatusAuthenticated) _then;

/// Create a copy of AuthStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(AuthStatusAuthenticated(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class AuthStatusFailure implements AuthStatus {
  const AuthStatusFailure({required this.failure});
  

 final  Failure failure;

/// Create a copy of AuthStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStatusFailureCopyWith<AuthStatusFailure> get copyWith => _$AuthStatusFailureCopyWithImpl<AuthStatusFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthStatusFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'AuthStatus.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $AuthStatusFailureCopyWith<$Res> implements $AuthStatusCopyWith<$Res> {
  factory $AuthStatusFailureCopyWith(AuthStatusFailure value, $Res Function(AuthStatusFailure) _then) = _$AuthStatusFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<dynamic, $Res> get failure;

}
/// @nodoc
class _$AuthStatusFailureCopyWithImpl<$Res>
    implements $AuthStatusFailureCopyWith<$Res> {
  _$AuthStatusFailureCopyWithImpl(this._self, this._then);

  final AuthStatusFailure _self;
  final $Res Function(AuthStatusFailure) _then;

/// Create a copy of AuthStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(AuthStatusFailure(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of AuthStatus
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
