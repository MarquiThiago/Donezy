import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/set_theme_mode_usecase.dart';

part 'set_theme_mode_event.dart';
part 'set_theme_mode_state.dart';
part 'set_theme_mode_bloc.freezed.dart';

@singleton
class SetThemeModeBloc extends Bloc<SetThemeModeEvent, SetThemeModeState> {
  SetThemeModeBloc(this._usecase) : super(const SetThemeModeState.initial()) {
    on<SetThemeModeEvent>(
      (event, emit) => switch (event) {
        _SetThemeMode() => _setThemeMode(emit, event),
      },
    );
  }
  final SetThemeModeUsecase _usecase;

  Future<void> _setThemeMode(
    Emitter<SetThemeModeState> emit,
    _SetThemeMode event,
  ) async {
    emit(const SetThemeModeState.loading());

    final result = await _usecase.call(event.newThemeMode);

    result.fold(
      (failure) => emit(SetThemeModeState.failure(failure)),
      (_) => emit(const SetThemeModeState.success()),
    );
  }
}
