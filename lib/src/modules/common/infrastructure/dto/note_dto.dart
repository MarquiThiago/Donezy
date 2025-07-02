import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/note.dart';

part 'note_dto.freezed.dart';
part 'note_dto.g.dart';

@freezed
abstract class NoteDTO with _$NoteDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory NoteDTO({
    required String uid,
    required String title,
    required String content,
    required DateTime dateCreated,
  }) = _NoteDTO;

  const NoteDTO._();

  factory NoteDTO.fromJson(Map<String, dynamic> json) =>
      _$NoteDTOFromJson(json);

  factory NoteDTO.fromDomain(Note note) => NoteDTO(
    uid: note.uid,
    title: note.title,
    content: note.content,
    dateCreated: DateTime.now(),
  );

  Note toDomain() =>
      Note(uid: uid, title: title, content: content, dateCreated: dateCreated);
}
