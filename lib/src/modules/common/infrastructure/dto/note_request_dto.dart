import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/note_request.dart';

part 'note_request_dto.freezed.dart';
part 'note_request_dto.g.dart';

@freezed
abstract class NoteRequestDTO with _$NoteRequestDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory NoteRequestDTO({
    required String title,
    required String content,
    required DateTime dateCreated,
  }) = _NoteRequestDTO;

  const NoteRequestDTO._();

  factory NoteRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$NoteRequestDTOFromJson(json);

  factory NoteRequestDTO.fromDomain(NoteRequest noteRequest) => NoteRequestDTO(
    title: noteRequest.title,
    content: noteRequest.content,
    dateCreated: noteRequest.dateCreated,
  );

  NoteRequest toDomain() =>
      NoteRequest(title: title, content: content, dateCreated: dateCreated);
}
