// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoteRequestDTO _$NoteRequestDTOFromJson(Map<String, dynamic> json) =>
    _NoteRequestDTO(
      title: json['title'] as String,
      content: json['content'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
    );

Map<String, dynamic> _$NoteRequestDTOToJson(_NoteRequestDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'dateCreated': instance.dateCreated.toIso8601String(),
    };
