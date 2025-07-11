import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModules {
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  // @lazySingleton
  // FirebaseStorage get storage => FirebaseStorage.instance;

  // @lazySingleton
  // FirebaseFunctions get functions =>
  //     FirebaseFunctions.instanceFor(region: 'southamerica-east1');

  // @lazySingleton
  // FirebaseRemoteConfig get remoteConfig => FirebaseRemoteConfig.instance;
}
