// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskDTO _$TaskDTOFromJson(Map<String, dynamic> json) => _TaskDTO(
  uid: json['uid'] as String,
  title: json['title'] as String,
  content: json['content'] as String,
  isDone: json['isDone'] as bool,
  dateCreated: DateTime.parse(json['dateCreated'] as String),
);

Map<String, dynamic> _$TaskDTOToJson(_TaskDTO instance) => <String, dynamic>{
  'uid': instance.uid,
  'title': instance.title,
  'content': instance.content,
  'isDone': instance.isDone,
  'dateCreated': instance.dateCreated.toIso8601String(),
};
