import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/infrastructure/exception/global_exception_handle.dart';

Future<Either<Failure, T>> exceptionHandler<T>({
  required Future<T> Function() execute,
  String? objectName,
}) async {
  try {
    final result = await execute();
    return Right(result);
  } on Exception catch (exception) {
    return Left(GlobalExceptionHandle.handle(exception));
  }
}
