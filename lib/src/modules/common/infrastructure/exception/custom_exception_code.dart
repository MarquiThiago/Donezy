enum CustomExceptionCode {
  platformNotSupported,
  noData,
  unableToUploadImage,
  requestCanceled,
  invalidCredential,
  userNotFound,
  notFound,
  invalidArgument,
  invalidPlatformOperation,
  unexpected,
  unsupportedOperation,
  unknown;

  factory CustomExceptionCode.fromString(String code) =>
      CustomExceptionCode.values.firstWhere(
        (e) => e.name == code,
        orElse: () => CustomExceptionCode.unknown,
      );
}
