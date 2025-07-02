// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoteDTO _$NoteDTOFromJson(Map<String, dynamic> json) => _NoteDTO(
  uid: json['uid'] as String,
  title: json['title'] as String,
  content: json['content'] as String,
  dateCreated: DateTime.parse(json['dateCreated'] as String),
);

Map<String, dynamic> _$NoteDTOToJson(_NoteDTO instance) => <String, dynamic>{
  'uid': instance.uid,
  'title': instance.title,
  'content': instance.content,
  'dateCreated': instance.dateCreated.toIso8601String(),
};
