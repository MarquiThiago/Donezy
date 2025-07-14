import 'package:donezy_app/app_shell.dart';
import 'package:donezy_app/firebase_options.dart';
import 'package:donezy_app/src/core/firebase/firebase_config.dart';
import 'package:donezy_app/src/modules/common/infrastructure/injection/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await FirebaseConfig.initializeFirebase();
  await configureInjection();

  runApp(const AppShell());
}
