import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';

extension FirestoreExtension on FirebaseFirestore {
  CollectionReference<Map<String, dynamic>> usersCollection() =>
      collection('users');
  DocumentReference<Map<String, dynamic>> userDocument(UserUid uid) =>
      usersCollection().doc(uid.uid);
  CollectionReference<Map<String, dynamic>> notesCollection(UserUid uid) =>
      userDocument(uid).collection('notes');
  DocumentReference<Map<String, dynamic>> noteDocument(
    UserUid uid,
    String noteId,
  ) => notesCollection(uid).doc(noteId);
  CollectionReference<Map<String, dynamic>> tasksCollection(UserUid uid) =>
      userDocument(uid).collection('tasks');
  DocumentReference<Map<String, dynamic>> taskDocument(
    UserUid uid,
    String taskId,
  ) => tasksCollection(uid).doc(taskId);
}
