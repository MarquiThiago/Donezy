import 'package:donezy_app/src/modules/splash_screen/presentation/blocs/splash_bloc/splash_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
Future<void> configureSplashInjection(GetIt getIt) async {}

@module
abstract class SplashModule {
  @singleton
  SplashBloc splashBloc() => SplashBloc();
}
