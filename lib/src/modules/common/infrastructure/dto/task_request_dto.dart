import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_request_dto.freezed.dart';
part 'task_request_dto.g.dart';

@freezed
abstract class TaskRequestDTO with _$TaskRequestDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory TaskRequestDTO({
    required String title,
    required String content,
    required bool isDone,
  }) = _TaskRequestDTO;

  const TaskRequestDTO._();

  factory TaskRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$TaskRequestDTOFromJson(json);
}
