import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:donezy_app/src/modules/auth/domain/auth_status.dart';
import 'package:donezy_app/src/modules/auth/domain/usecases/watch_auth_status_usecase.dart';
import 'package:donezy_app/src/modules/common/domain/failure/failure.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'watch_auth_event.dart';
part 'watch_auth_state.dart';
part 'watch_auth_bloc.freezed.dart';

@injectable
class WatchAuthBloc extends Bloc<WatchAuthEvent, WatchAuthState> {
  WatchAuthBloc(this._watchAuthStatusUseCase)
    : super(const WatchAuthState.initial()) {
    on<WatchAuthEvent>(
      (event, emit) async => switch (event) {
        _WatchAuthStatus() => _onWatchAuthStatus(event, emit),
      },
    );
  }

  final WatchAuthStatusUseCase _watchAuthStatusUseCase;
  late final StreamSubscription<Either<Failure, AuthStatus>>
  _authStatusSubscription;

  Future<void> _onWatchAuthStatus(
    _WatchAuthStatus event,
    Emitter<WatchAuthState> emit,
  ) async {
    emit(const WatchAuthState.loading());

    _authStatusSubscription = _watchAuthStatusUseCase.call().listen(
      (result) => result.fold(
        (failure) => emit(WatchAuthState.failure(failure)),
        (authStatus) => switch (authStatus) {
          AuthStatusAuthenticated(userUid: final userUid) => emit(
            WatchAuthState.authenticated(userUid: userUid),
          ),
          AuthStatusUnauthenticated() => emit(
            const WatchAuthState.unauthenticated(),
          ),
          _ => emit(const WatchAuthState.unauthenticated()),
        },
      ),
    );
  }

  @override
  Future<void> close() {
    _authStatusSubscription.cancel();
    return super.close();
  }
}
