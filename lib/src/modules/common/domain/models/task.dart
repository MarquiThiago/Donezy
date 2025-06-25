import 'package:equatable/equatable.dart';

class Task with EquatableMixin {
  Task({
    required this.uid,
    required this.title,
    required this.content,
    required this.isDone,
    required this.dateCreated,
  });
  String uid;
  String title;
  String content;
  bool isDone;
  DateTime dateCreated;

  @override
  List<Object?> get props => [uid, title, content, isDone, dateCreated];
}
