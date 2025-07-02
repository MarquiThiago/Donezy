import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/task.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
abstract class TaskDTO with _$TaskDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory TaskDTO({
    required String uid,
    required String title,
    required String content,
    required bool isDone,
    required DateTime dateCreated,
  }) = _TaskDTO;

  const TaskDTO._();

  factory TaskDTO.fromJson(Map<String, dynamic> json) =>
      _$TaskDTOFromJson(json);

  factory TaskDTO.fromDomain(Task task) => TaskDTO(
    uid: task.uid,
    title: task.title,
    content: task.content,
    isDone: task.isDone,
    dateCreated: task.dateCreated,
  );

  Task toDomain() => Task(
    uid: uid,
    title: title,
    content: content,
    isDone: isDone,
    dateCreated: dateCreated,
  );
}
