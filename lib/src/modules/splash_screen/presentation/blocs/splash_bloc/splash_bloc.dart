import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<SplashEvent>(
      (event, emit) => switch (event) {
        _SplashStarted() => _onSplashStarted(event, emit),
        _SplashCompleted() => _onSplashCompleted(event, emit),
        _SplashReset() => _onSplashReset(event, emit),
      },
    );
  }

  static bool _isFirstRun = true;
  static bool _hasCompletedSplash = false;
  static DateTime? _lastStartTime;

  void _onSplashStarted(_SplashStarted event, Emitter<SplashState> emit) async {
    final now = DateTime.now();

    // Se já completou a splash screen e não é primeira execução, pula
    if (_hasCompletedSplash && !_isFirstRun) {
      emit(const SplashState.finished());
      return;
    }

    // Se é a primeira execução ou se passou muito tempo desde o último start
    // (indicando um Hot Restart), mostra a splash screen
    if (_isFirstRun ||
        _lastStartTime == null ||
        now.difference(_lastStartTime!).inSeconds > 5) {
      _lastStartTime = now;
      emit(const SplashState.loading());

      // Aguarda um tempo mínimo para a splash screen ser exibida
      await Future.delayed(const Duration(seconds: 3));

      emit(const SplashState.ready());

      // Marca que já não é mais a primeira execução
      _isFirstRun = false;
    } else {
      // Hot reload - pula a splash screen
      emit(const SplashState.finished());
    }
  }

  void _onSplashCompleted(_SplashCompleted event, Emitter<SplashState> emit) {
    _hasCompletedSplash = true;
    emit(const SplashState.finished());
  }

  void _onSplashReset(_SplashReset event, Emitter<SplashState> emit) {
    _hasCompletedSplash = false;
    _lastStartTime = null;
    emit(const SplashState.initial());
  }

  // Método estático para resetar o estado (útil para testes ou reset manual)
  static void reset() {
    _isFirstRun = true;
    _hasCompletedSplash = false;
    _lastStartTime = null;
  }
}
