import 'package:equatable/equatable.dart';

class Note with EquatableMixin {
  Note({
    required this.uid,
    required this.title,
    required this.content,
    required this.dateCreated,
  });
  String uid;
  String title;
  String content;
  DateTime dateCreated;

  @override
  List<Object?> get props => [uid, title, content, dateCreated];
}
