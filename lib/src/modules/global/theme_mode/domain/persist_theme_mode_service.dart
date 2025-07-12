import 'package:dartz/dartz.dart';
import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';

abstract interface class PersistThemeModeService {
  Stream<Either<Failure, DSThemeModeState>> get stream;
  Future<Either<Failure, DSThemeModeState>> saveThemeMode(
    DSThemeMode themeMode,
  );
}
