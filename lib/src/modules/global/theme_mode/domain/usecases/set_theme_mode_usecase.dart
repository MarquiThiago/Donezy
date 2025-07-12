import 'package:dartz/dartz.dart';
import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:injectable/injectable.dart';

import '../persist_theme_mode_service.dart';

@singleton
class SetThemeModeUsecase {
  SetThemeModeUsecase(this._persistThemeModeService);

  final PersistThemeModeService _persistThemeModeService;

  Future<Either<Failure, DSThemeModeState>> call(DSThemeMode themeMode) async =>
      _persistThemeModeService.saveThemeMode(themeMode);
}
