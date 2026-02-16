// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskRequestDTO _$TaskRequestDTOFromJson(Map<String, dynamic> json) =>
    _TaskRequestDTO(
      title: json['title'] as String,
      content: json['content'] as String,
      isDone: json['isDone'] as bool,
    );

Map<String, dynamic> _$TaskRequestDTOToJson(_TaskRequestDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'isDone': instance.isDone,
    };
