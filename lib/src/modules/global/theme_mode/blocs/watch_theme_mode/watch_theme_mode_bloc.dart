import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/watch_theme_mode_usecase.dart';

part 'watch_theme_mode_event.dart';
part 'watch_theme_mode_state.dart';
part 'watch_theme_mode_bloc.freezed.dart';

@singleton
class WatchThemeModeBloc
    extends Bloc<WatchThemeModeEvent, WatchThemeModeState> {
  WatchThemeModeBloc(this._usecase)
    : super(const WatchThemeModeState.initial()) {
    on<WatchThemeModeEvent>(
      (event, emit) async => switch (event) {
        _Start() => _onStart(emit),
        _Update() => _onUpdate(emit, event),
      },
    );
    add(const WatchThemeModeEvent.start());
  }

  final WatchThemeModeUsecase _usecase;
  StreamSubscription<Either<Failure, DSThemeModeState>>? _subscription;

  Future<void> _onStart(Emitter<WatchThemeModeState> emit) async {
    emit(const WatchThemeModeState.loading());

    await _dispose();

    _subscription = _usecase.call().listen(
      (result) => add(WatchThemeModeEvent.update(result)),
    );
  }

  Future<void> _onUpdate(
    Emitter<WatchThemeModeState> emit,
    _Update event,
  ) async {
    event.result.fold(
      (failure) => emit(WatchThemeModeState.failure(failure)),
      (themeMode) =>
          emit(WatchThemeModeState.success(themeMode, DateTime.now())),
    );
  }

  Future<void> _dispose() async {
    await _subscription?.cancel();
    _subscription = null;
  }

  @override
  Future<void> close() async {
    await _dispose();
    return super.close();
  }
}
