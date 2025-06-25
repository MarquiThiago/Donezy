import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

/// **MANDARORY**: keep Failures organized in alphabetical order
@freezed
class Failure<T> with _$Failure<T> {
  const factory Failure.adminBlockedOperation() = AdminBlockedOperation;
  const factory Failure.appleFailed() = AppleFailed;
  const factory Failure.appleInvalidResponse() = AppleInvalidResponse;
  const factory Failure.appleNotSuported() = AppleNotSuported;
  const factory Failure.assertionFailed({T? object}) = AssertionFailed;

  const factory Failure.badCertificate() = BadCertificate;
  const factory Failure.badResponse() = BadResponse;

  const factory Failure.connectionError() = ConnectionError;
  const factory Failure.concurrentModification({T? object}) =
      ConcurrentModification;

  const factory Failure.domainBrokenRule({String? message}) = DomainBrokenRule;

  const factory Failure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory Failure.empty() = Empty;

  const factory Failure.gallerySaveError() = GallerySaverError;
  const factory Failure.googleChannelError() = GoogleChannelError;
  const factory Failure.googleSignIn() = GoogleSignIn;

  const factory Failure.imagePickError() = ImagePickError;
  const factory Failure.invalidArgument({T? object}) = InvalidArgument;
  const factory Failure.invalidCredential() = InvalidCredential;
  const factory Failure.invalidData({T? object}) = InvalidData;
  const factory Failure.invalidDisplayName() = InvalidDisplayName;
  const factory Failure.invalidEmail() = InvalidEmail;
  const factory Failure.invalidFormat({T? object}) = InvalidFormat;
  const factory Failure.invalidPlatformOperation({T? object}) =
      InvalidPlatformOperation;
  const factory Failure.invalidRequest() = InvalidRequest;
  const factory Failure.invalidState({T? object}) = InvalidState;
  const factory Failure.invalidUsername() = InvalidUsername;
  const factory Failure.invalidVersion() = InvalidVersion;

  const factory Failure.locationServiceDisabled() = LocationServiceDisabled;

  const factory Failure.methodNotFound({T? object}) = MethodNotFound;

  const factory Failure.networkRequestFailed() = NetworkRequestFailed;
  const factory Failure.noData() = NoData;
  const factory Failure.notCreated() = NotCreated;
  const factory Failure.notFound() = NotFound;

  const factory Failure.outOfMemory({T? object}) = OutOfMemory;

  const factory Failure.permissionDenied() = PermissionDenied;
  const factory Failure.permissionPermanentlyDenied() =
      PermissionPermanentlyDenied;
  const factory Failure.platformNotSupported() = PlatformNotSupported;

  const factory Failure.rangeError({T? object}) = RangeError;
  const factory Failure.requestCanceled() = RequestCanceled;
  const factory Failure.requestDenied() = RequestDenied;
  const factory Failure.requiresRecentLogin() = RequiresRecentLogin;

  const factory Failure.storageInformationNotFound() =
      StorageInformationNotFound;
  const factory Failure.stackOverflow({T? object}) = StackOverflow;

  const factory Failure.timeoutError() = TimeoutError;
  const factory Failure.typeError({T? object}) = TypeError;

  const factory Failure.unableToUploadImage() = UnableToUploadImage;
  const factory Failure.unauthorized() = Unauthorized;
  const factory Failure.unavailable() = Unavailable;
  const factory Failure.unexpected({T? object}) = Unexpected;
  const factory Failure.unimplementedMethod({T? object}) = UnimplementedMethod;
  const factory Failure.unsupportedOperation({T? object}) =
      UnsupportedOperation;
  const factory Failure.unmappedBattery({T? object}) = UnmappedBattery;
  const factory Failure.unmappedFirebase({T? object}) = UnmappedFirebase;
  const factory Failure.updateImageFailure() = UpdateImageFailure;
  const factory Failure.urlCannotLaunch() = UrlCannotLaunch;
  const factory Failure.urlNotFound({T? object}) = UrlNotFound;
  const factory Failure.userDisabled() = UserDisabled;
  const factory Failure.userDocNonExistent() = UserDocNonExistent;
  const factory Failure.usernameExists() = UsernameExists;
  const factory Failure.userNotFound() = UserNotFound;

  const factory Failure.wrongPassword() = WrongPassword;
}
