import 'package:equatable/equatable.dart';

class NoteRequest with EquatableMixin {
  NoteRequest({
    required this.title,
    required this.content,
    required this.dateCreated,
  });

  final String title;
  final String content;
  final DateTime dateCreated;

  @override
  List<Object?> get props => [title, content, dateCreated];
}
