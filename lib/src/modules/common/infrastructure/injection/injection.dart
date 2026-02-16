import 'package:donezy_app/src/modules/auth/dependencies/auth_module.dart';
import 'package:donezy_app/src/modules/note/dependencies/note_module.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
Future<void> configureInjection() async {
  await getIt.init();
  await getIt.allReady();
  await configureAuthInjection(getIt);
  await configureNoteInjection(getIt);
}
