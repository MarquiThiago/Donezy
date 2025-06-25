// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>()';
}


}

/// @nodoc
class $FailureCopyWith<T,$Res>  {
$FailureCopyWith(Failure<T> _, $Res Function(Failure<T>) __);
}


/// @nodoc


class AdminBlockedOperation<T> implements Failure<T> {
  const AdminBlockedOperation();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminBlockedOperation<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.adminBlockedOperation()';
}


}




/// @nodoc


class AppleFailed<T> implements Failure<T> {
  const AppleFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppleFailed<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.appleFailed()';
}


}




/// @nodoc


class AppleInvalidResponse<T> implements Failure<T> {
  const AppleInvalidResponse();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppleInvalidResponse<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.appleInvalidResponse()';
}


}




/// @nodoc


class AppleNotSuported<T> implements Failure<T> {
  const AppleNotSuported();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppleNotSuported<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.appleNotSuported()';
}


}




/// @nodoc


class AssertionFailed<T> implements Failure<T> {
  const AssertionFailed({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssertionFailedCopyWith<T, AssertionFailed<T>> get copyWith => _$AssertionFailedCopyWithImpl<T, AssertionFailed<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssertionFailed<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.assertionFailed(object: $object)';
}


}

/// @nodoc
abstract mixin class $AssertionFailedCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $AssertionFailedCopyWith(AssertionFailed<T> value, $Res Function(AssertionFailed<T>) _then) = _$AssertionFailedCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$AssertionFailedCopyWithImpl<T,$Res>
    implements $AssertionFailedCopyWith<T, $Res> {
  _$AssertionFailedCopyWithImpl(this._self, this._then);

  final AssertionFailed<T> _self;
  final $Res Function(AssertionFailed<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(AssertionFailed<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class BadCertificate<T> implements Failure<T> {
  const BadCertificate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadCertificate<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.badCertificate()';
}


}




/// @nodoc


class BadResponse<T> implements Failure<T> {
  const BadResponse();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadResponse<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.badResponse()';
}


}




/// @nodoc


class ConnectionError<T> implements Failure<T> {
  const ConnectionError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionError<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.connectionError()';
}


}




/// @nodoc


class ConcurrentModification<T> implements Failure<T> {
  const ConcurrentModification({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConcurrentModificationCopyWith<T, ConcurrentModification<T>> get copyWith => _$ConcurrentModificationCopyWithImpl<T, ConcurrentModification<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConcurrentModification<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.concurrentModification(object: $object)';
}


}

/// @nodoc
abstract mixin class $ConcurrentModificationCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $ConcurrentModificationCopyWith(ConcurrentModification<T> value, $Res Function(ConcurrentModification<T>) _then) = _$ConcurrentModificationCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$ConcurrentModificationCopyWithImpl<T,$Res>
    implements $ConcurrentModificationCopyWith<T, $Res> {
  _$ConcurrentModificationCopyWithImpl(this._self, this._then);

  final ConcurrentModification<T> _self;
  final $Res Function(ConcurrentModification<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(ConcurrentModification<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class DomainBrokenRule<T> implements Failure<T> {
  const DomainBrokenRule({this.message});
  

 final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DomainBrokenRuleCopyWith<T, DomainBrokenRule<T>> get copyWith => _$DomainBrokenRuleCopyWithImpl<T, DomainBrokenRule<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DomainBrokenRule<T>&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure<$T>.domainBrokenRule(message: $message)';
}


}

/// @nodoc
abstract mixin class $DomainBrokenRuleCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $DomainBrokenRuleCopyWith(DomainBrokenRule<T> value, $Res Function(DomainBrokenRule<T>) _then) = _$DomainBrokenRuleCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$DomainBrokenRuleCopyWithImpl<T,$Res>
    implements $DomainBrokenRuleCopyWith<T, $Res> {
  _$DomainBrokenRuleCopyWithImpl(this._self, this._then);

  final DomainBrokenRule<T> _self;
  final $Res Function(DomainBrokenRule<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(DomainBrokenRule<T>(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class EmailAlreadyInUse<T> implements Failure<T> {
  const EmailAlreadyInUse();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailAlreadyInUse<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.emailAlreadyInUse()';
}


}




/// @nodoc


class Empty<T> implements Failure<T> {
  const Empty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Empty<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.empty()';
}


}




/// @nodoc


class GallerySaverError<T> implements Failure<T> {
  const GallerySaverError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GallerySaverError<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.gallerySaveError()';
}


}




/// @nodoc


class GoogleChannelError<T> implements Failure<T> {
  const GoogleChannelError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleChannelError<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.googleChannelError()';
}


}




/// @nodoc


class GoogleSignIn<T> implements Failure<T> {
  const GoogleSignIn();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleSignIn<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.googleSignIn()';
}


}




/// @nodoc


class ImagePickError<T> implements Failure<T> {
  const ImagePickError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagePickError<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.imagePickError()';
}


}




/// @nodoc


class InvalidArgument<T> implements Failure<T> {
  const InvalidArgument({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidArgumentCopyWith<T, InvalidArgument<T>> get copyWith => _$InvalidArgumentCopyWithImpl<T, InvalidArgument<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidArgument<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.invalidArgument(object: $object)';
}


}

/// @nodoc
abstract mixin class $InvalidArgumentCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $InvalidArgumentCopyWith(InvalidArgument<T> value, $Res Function(InvalidArgument<T>) _then) = _$InvalidArgumentCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$InvalidArgumentCopyWithImpl<T,$Res>
    implements $InvalidArgumentCopyWith<T, $Res> {
  _$InvalidArgumentCopyWithImpl(this._self, this._then);

  final InvalidArgument<T> _self;
  final $Res Function(InvalidArgument<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(InvalidArgument<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class InvalidCredential<T> implements Failure<T> {
  const InvalidCredential();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidCredential<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.invalidCredential()';
}


}




/// @nodoc


class InvalidData<T> implements Failure<T> {
  const InvalidData({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidDataCopyWith<T, InvalidData<T>> get copyWith => _$InvalidDataCopyWithImpl<T, InvalidData<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidData<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.invalidData(object: $object)';
}


}

/// @nodoc
abstract mixin class $InvalidDataCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $InvalidDataCopyWith(InvalidData<T> value, $Res Function(InvalidData<T>) _then) = _$InvalidDataCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$InvalidDataCopyWithImpl<T,$Res>
    implements $InvalidDataCopyWith<T, $Res> {
  _$InvalidDataCopyWithImpl(this._self, this._then);

  final InvalidData<T> _self;
  final $Res Function(InvalidData<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(InvalidData<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class InvalidDisplayName<T> implements Failure<T> {
  const InvalidDisplayName();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidDisplayName<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.invalidDisplayName()';
}


}




/// @nodoc


class InvalidEmail<T> implements Failure<T> {
  const InvalidEmail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidEmail<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.invalidEmail()';
}


}




/// @nodoc


class InvalidFormat<T> implements Failure<T> {
  const InvalidFormat({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidFormatCopyWith<T, InvalidFormat<T>> get copyWith => _$InvalidFormatCopyWithImpl<T, InvalidFormat<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidFormat<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.invalidFormat(object: $object)';
}


}

/// @nodoc
abstract mixin class $InvalidFormatCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $InvalidFormatCopyWith(InvalidFormat<T> value, $Res Function(InvalidFormat<T>) _then) = _$InvalidFormatCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$InvalidFormatCopyWithImpl<T,$Res>
    implements $InvalidFormatCopyWith<T, $Res> {
  _$InvalidFormatCopyWithImpl(this._self, this._then);

  final InvalidFormat<T> _self;
  final $Res Function(InvalidFormat<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(InvalidFormat<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class InvalidPlatformOperation<T> implements Failure<T> {
  const InvalidPlatformOperation({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidPlatformOperationCopyWith<T, InvalidPlatformOperation<T>> get copyWith => _$InvalidPlatformOperationCopyWithImpl<T, InvalidPlatformOperation<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidPlatformOperation<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.invalidPlatformOperation(object: $object)';
}


}

/// @nodoc
abstract mixin class $InvalidPlatformOperationCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $InvalidPlatformOperationCopyWith(InvalidPlatformOperation<T> value, $Res Function(InvalidPlatformOperation<T>) _then) = _$InvalidPlatformOperationCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$InvalidPlatformOperationCopyWithImpl<T,$Res>
    implements $InvalidPlatformOperationCopyWith<T, $Res> {
  _$InvalidPlatformOperationCopyWithImpl(this._self, this._then);

  final InvalidPlatformOperation<T> _self;
  final $Res Function(InvalidPlatformOperation<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(InvalidPlatformOperation<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class InvalidRequest<T> implements Failure<T> {
  const InvalidRequest();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidRequest<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.invalidRequest()';
}


}




/// @nodoc


class InvalidState<T> implements Failure<T> {
  const InvalidState({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidStateCopyWith<T, InvalidState<T>> get copyWith => _$InvalidStateCopyWithImpl<T, InvalidState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidState<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.invalidState(object: $object)';
}


}

/// @nodoc
abstract mixin class $InvalidStateCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $InvalidStateCopyWith(InvalidState<T> value, $Res Function(InvalidState<T>) _then) = _$InvalidStateCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$InvalidStateCopyWithImpl<T,$Res>
    implements $InvalidStateCopyWith<T, $Res> {
  _$InvalidStateCopyWithImpl(this._self, this._then);

  final InvalidState<T> _self;
  final $Res Function(InvalidState<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(InvalidState<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class InvalidUsername<T> implements Failure<T> {
  const InvalidUsername();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidUsername<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.invalidUsername()';
}


}




/// @nodoc


class InvalidVersion<T> implements Failure<T> {
  const InvalidVersion();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidVersion<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.invalidVersion()';
}


}




/// @nodoc


class LocationServiceDisabled<T> implements Failure<T> {
  const LocationServiceDisabled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationServiceDisabled<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.locationServiceDisabled()';
}


}




/// @nodoc


class MethodNotFound<T> implements Failure<T> {
  const MethodNotFound({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MethodNotFoundCopyWith<T, MethodNotFound<T>> get copyWith => _$MethodNotFoundCopyWithImpl<T, MethodNotFound<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MethodNotFound<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.methodNotFound(object: $object)';
}


}

/// @nodoc
abstract mixin class $MethodNotFoundCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $MethodNotFoundCopyWith(MethodNotFound<T> value, $Res Function(MethodNotFound<T>) _then) = _$MethodNotFoundCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$MethodNotFoundCopyWithImpl<T,$Res>
    implements $MethodNotFoundCopyWith<T, $Res> {
  _$MethodNotFoundCopyWithImpl(this._self, this._then);

  final MethodNotFound<T> _self;
  final $Res Function(MethodNotFound<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(MethodNotFound<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class NetworkRequestFailed<T> implements Failure<T> {
  const NetworkRequestFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkRequestFailed<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.networkRequestFailed()';
}


}




/// @nodoc


class NoData<T> implements Failure<T> {
  const NoData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoData<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.noData()';
}


}




/// @nodoc


class NotCreated<T> implements Failure<T> {
  const NotCreated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotCreated<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.notCreated()';
}


}




/// @nodoc


class NotFound<T> implements Failure<T> {
  const NotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFound<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.notFound()';
}


}




/// @nodoc


class OutOfMemory<T> implements Failure<T> {
  const OutOfMemory({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutOfMemoryCopyWith<T, OutOfMemory<T>> get copyWith => _$OutOfMemoryCopyWithImpl<T, OutOfMemory<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutOfMemory<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.outOfMemory(object: $object)';
}


}

/// @nodoc
abstract mixin class $OutOfMemoryCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $OutOfMemoryCopyWith(OutOfMemory<T> value, $Res Function(OutOfMemory<T>) _then) = _$OutOfMemoryCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$OutOfMemoryCopyWithImpl<T,$Res>
    implements $OutOfMemoryCopyWith<T, $Res> {
  _$OutOfMemoryCopyWithImpl(this._self, this._then);

  final OutOfMemory<T> _self;
  final $Res Function(OutOfMemory<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(OutOfMemory<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class PermissionDenied<T> implements Failure<T> {
  const PermissionDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionDenied<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.permissionDenied()';
}


}




/// @nodoc


class PermissionPermanentlyDenied<T> implements Failure<T> {
  const PermissionPermanentlyDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionPermanentlyDenied<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.permissionPermanentlyDenied()';
}


}




/// @nodoc


class PlatformNotSupported<T> implements Failure<T> {
  const PlatformNotSupported();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlatformNotSupported<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.platformNotSupported()';
}


}




/// @nodoc


class RangeError<T> implements Failure<T> {
  const RangeError({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RangeErrorCopyWith<T, RangeError<T>> get copyWith => _$RangeErrorCopyWithImpl<T, RangeError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RangeError<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.rangeError(object: $object)';
}


}

/// @nodoc
abstract mixin class $RangeErrorCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $RangeErrorCopyWith(RangeError<T> value, $Res Function(RangeError<T>) _then) = _$RangeErrorCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$RangeErrorCopyWithImpl<T,$Res>
    implements $RangeErrorCopyWith<T, $Res> {
  _$RangeErrorCopyWithImpl(this._self, this._then);

  final RangeError<T> _self;
  final $Res Function(RangeError<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(RangeError<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class RequestCanceled<T> implements Failure<T> {
  const RequestCanceled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCanceled<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.requestCanceled()';
}


}




/// @nodoc


class RequestDenied<T> implements Failure<T> {
  const RequestDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestDenied<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.requestDenied()';
}


}




/// @nodoc


class RequiresRecentLogin<T> implements Failure<T> {
  const RequiresRecentLogin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequiresRecentLogin<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.requiresRecentLogin()';
}


}




/// @nodoc


class StorageInformationNotFound<T> implements Failure<T> {
  const StorageInformationNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageInformationNotFound<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.storageInformationNotFound()';
}


}




/// @nodoc


class StackOverflow<T> implements Failure<T> {
  const StackOverflow({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StackOverflowCopyWith<T, StackOverflow<T>> get copyWith => _$StackOverflowCopyWithImpl<T, StackOverflow<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StackOverflow<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.stackOverflow(object: $object)';
}


}

/// @nodoc
abstract mixin class $StackOverflowCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $StackOverflowCopyWith(StackOverflow<T> value, $Res Function(StackOverflow<T>) _then) = _$StackOverflowCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$StackOverflowCopyWithImpl<T,$Res>
    implements $StackOverflowCopyWith<T, $Res> {
  _$StackOverflowCopyWithImpl(this._self, this._then);

  final StackOverflow<T> _self;
  final $Res Function(StackOverflow<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(StackOverflow<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class TimeoutError<T> implements Failure<T> {
  const TimeoutError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeoutError<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.timeoutError()';
}


}




/// @nodoc


class TypeError<T> implements Failure<T> {
  const TypeError({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeErrorCopyWith<T, TypeError<T>> get copyWith => _$TypeErrorCopyWithImpl<T, TypeError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeError<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.typeError(object: $object)';
}


}

/// @nodoc
abstract mixin class $TypeErrorCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $TypeErrorCopyWith(TypeError<T> value, $Res Function(TypeError<T>) _then) = _$TypeErrorCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$TypeErrorCopyWithImpl<T,$Res>
    implements $TypeErrorCopyWith<T, $Res> {
  _$TypeErrorCopyWithImpl(this._self, this._then);

  final TypeError<T> _self;
  final $Res Function(TypeError<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(TypeError<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class UnableToUploadImage<T> implements Failure<T> {
  const UnableToUploadImage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnableToUploadImage<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.unableToUploadImage()';
}


}




/// @nodoc


class Unauthorized<T> implements Failure<T> {
  const Unauthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthorized<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.unauthorized()';
}


}




/// @nodoc


class Unavailable<T> implements Failure<T> {
  const Unavailable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unavailable<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.unavailable()';
}


}




/// @nodoc


class Unexpected<T> implements Failure<T> {
  const Unexpected({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedCopyWith<T, Unexpected<T>> get copyWith => _$UnexpectedCopyWithImpl<T, Unexpected<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unexpected<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.unexpected(object: $object)';
}


}

/// @nodoc
abstract mixin class $UnexpectedCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $UnexpectedCopyWith(Unexpected<T> value, $Res Function(Unexpected<T>) _then) = _$UnexpectedCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$UnexpectedCopyWithImpl<T,$Res>
    implements $UnexpectedCopyWith<T, $Res> {
  _$UnexpectedCopyWithImpl(this._self, this._then);

  final Unexpected<T> _self;
  final $Res Function(Unexpected<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(Unexpected<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class UnimplementedMethod<T> implements Failure<T> {
  const UnimplementedMethod({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnimplementedMethodCopyWith<T, UnimplementedMethod<T>> get copyWith => _$UnimplementedMethodCopyWithImpl<T, UnimplementedMethod<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnimplementedMethod<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.unimplementedMethod(object: $object)';
}


}

/// @nodoc
abstract mixin class $UnimplementedMethodCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $UnimplementedMethodCopyWith(UnimplementedMethod<T> value, $Res Function(UnimplementedMethod<T>) _then) = _$UnimplementedMethodCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$UnimplementedMethodCopyWithImpl<T,$Res>
    implements $UnimplementedMethodCopyWith<T, $Res> {
  _$UnimplementedMethodCopyWithImpl(this._self, this._then);

  final UnimplementedMethod<T> _self;
  final $Res Function(UnimplementedMethod<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(UnimplementedMethod<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class UnsupportedOperation<T> implements Failure<T> {
  const UnsupportedOperation({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnsupportedOperationCopyWith<T, UnsupportedOperation<T>> get copyWith => _$UnsupportedOperationCopyWithImpl<T, UnsupportedOperation<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnsupportedOperation<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.unsupportedOperation(object: $object)';
}


}

/// @nodoc
abstract mixin class $UnsupportedOperationCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $UnsupportedOperationCopyWith(UnsupportedOperation<T> value, $Res Function(UnsupportedOperation<T>) _then) = _$UnsupportedOperationCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$UnsupportedOperationCopyWithImpl<T,$Res>
    implements $UnsupportedOperationCopyWith<T, $Res> {
  _$UnsupportedOperationCopyWithImpl(this._self, this._then);

  final UnsupportedOperation<T> _self;
  final $Res Function(UnsupportedOperation<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(UnsupportedOperation<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class UnmappedBattery<T> implements Failure<T> {
  const UnmappedBattery({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnmappedBatteryCopyWith<T, UnmappedBattery<T>> get copyWith => _$UnmappedBatteryCopyWithImpl<T, UnmappedBattery<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnmappedBattery<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.unmappedBattery(object: $object)';
}


}

/// @nodoc
abstract mixin class $UnmappedBatteryCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $UnmappedBatteryCopyWith(UnmappedBattery<T> value, $Res Function(UnmappedBattery<T>) _then) = _$UnmappedBatteryCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$UnmappedBatteryCopyWithImpl<T,$Res>
    implements $UnmappedBatteryCopyWith<T, $Res> {
  _$UnmappedBatteryCopyWithImpl(this._self, this._then);

  final UnmappedBattery<T> _self;
  final $Res Function(UnmappedBattery<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(UnmappedBattery<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class UnmappedFirebase<T> implements Failure<T> {
  const UnmappedFirebase({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnmappedFirebaseCopyWith<T, UnmappedFirebase<T>> get copyWith => _$UnmappedFirebaseCopyWithImpl<T, UnmappedFirebase<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnmappedFirebase<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.unmappedFirebase(object: $object)';
}


}

/// @nodoc
abstract mixin class $UnmappedFirebaseCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $UnmappedFirebaseCopyWith(UnmappedFirebase<T> value, $Res Function(UnmappedFirebase<T>) _then) = _$UnmappedFirebaseCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$UnmappedFirebaseCopyWithImpl<T,$Res>
    implements $UnmappedFirebaseCopyWith<T, $Res> {
  _$UnmappedFirebaseCopyWithImpl(this._self, this._then);

  final UnmappedFirebase<T> _self;
  final $Res Function(UnmappedFirebase<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(UnmappedFirebase<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class UpdateImageFailure<T> implements Failure<T> {
  const UpdateImageFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateImageFailure<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.updateImageFailure()';
}


}




/// @nodoc


class UrlCannotLaunch<T> implements Failure<T> {
  const UrlCannotLaunch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UrlCannotLaunch<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.urlCannotLaunch()';
}


}




/// @nodoc


class UrlNotFound<T> implements Failure<T> {
  const UrlNotFound({this.object});
  

 final  T? object;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UrlNotFoundCopyWith<T, UrlNotFound<T>> get copyWith => _$UrlNotFoundCopyWithImpl<T, UrlNotFound<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UrlNotFound<T>&&const DeepCollectionEquality().equals(other.object, object));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(object));

@override
String toString() {
  return 'Failure<$T>.urlNotFound(object: $object)';
}


}

/// @nodoc
abstract mixin class $UrlNotFoundCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $UrlNotFoundCopyWith(UrlNotFound<T> value, $Res Function(UrlNotFound<T>) _then) = _$UrlNotFoundCopyWithImpl;
@useResult
$Res call({
 T? object
});




}
/// @nodoc
class _$UrlNotFoundCopyWithImpl<T,$Res>
    implements $UrlNotFoundCopyWith<T, $Res> {
  _$UrlNotFoundCopyWithImpl(this._self, this._then);

  final UrlNotFound<T> _self;
  final $Res Function(UrlNotFound<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? object = freezed,}) {
  return _then(UrlNotFound<T>(
object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class UserDisabled<T> implements Failure<T> {
  const UserDisabled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDisabled<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.userDisabled()';
}


}




/// @nodoc


class UserDocNonExistent<T> implements Failure<T> {
  const UserDocNonExistent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDocNonExistent<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.userDocNonExistent()';
}


}




/// @nodoc


class UsernameExists<T> implements Failure<T> {
  const UsernameExists();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsernameExists<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.usernameExists()';
}


}




/// @nodoc


class UserNotFound<T> implements Failure<T> {
  const UserNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNotFound<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.userNotFound()';
}


}




/// @nodoc


class WrongPassword<T> implements Failure<T> {
  const WrongPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WrongPassword<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>.wrongPassword()';
}


}




// dart format on
