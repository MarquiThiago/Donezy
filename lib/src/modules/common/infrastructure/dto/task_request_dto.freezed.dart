// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskRequestDTO {

 String get title; String get content; bool get isDone;
/// Create a copy of TaskRequestDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskRequestDTOCopyWith<TaskRequestDTO> get copyWith => _$TaskRequestDTOCopyWithImpl<TaskRequestDTO>(this as TaskRequestDTO, _$identity);

  /// Serializes this TaskRequestDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskRequestDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.isDone, isDone) || other.isDone == isDone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,isDone);

@override
String toString() {
  return 'TaskRequestDTO(title: $title, content: $content, isDone: $isDone)';
}


}

/// @nodoc
abstract mixin class $TaskRequestDTOCopyWith<$Res>  {
  factory $TaskRequestDTOCopyWith(TaskRequestDTO value, $Res Function(TaskRequestDTO) _then) = _$TaskRequestDTOCopyWithImpl;
@useResult
$Res call({
 String title, String content, bool isDone
});




}
/// @nodoc
class _$TaskRequestDTOCopyWithImpl<$Res>
    implements $TaskRequestDTOCopyWith<$Res> {
  _$TaskRequestDTOCopyWithImpl(this._self, this._then);

  final TaskRequestDTO _self;
  final $Res Function(TaskRequestDTO) _then;

/// Create a copy of TaskRequestDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? content = null,Object? isDone = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,isDone: null == isDone ? _self.isDone : isDone // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TaskRequestDTO extends TaskRequestDTO {
  const _TaskRequestDTO({required this.title, required this.content, required this.isDone}): super._();
  factory _TaskRequestDTO.fromJson(Map<String, dynamic> json) => _$TaskRequestDTOFromJson(json);

@override final  String title;
@override final  String content;
@override final  bool isDone;

/// Create a copy of TaskRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskRequestDTOCopyWith<_TaskRequestDTO> get copyWith => __$TaskRequestDTOCopyWithImpl<_TaskRequestDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskRequestDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskRequestDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.isDone, isDone) || other.isDone == isDone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,isDone);

@override
String toString() {
  return 'TaskRequestDTO(title: $title, content: $content, isDone: $isDone)';
}


}

/// @nodoc
abstract mixin class _$TaskRequestDTOCopyWith<$Res> implements $TaskRequestDTOCopyWith<$Res> {
  factory _$TaskRequestDTOCopyWith(_TaskRequestDTO value, $Res Function(_TaskRequestDTO) _then) = __$TaskRequestDTOCopyWithImpl;
@override @useResult
$Res call({
 String title, String content, bool isDone
});




}
/// @nodoc
class __$TaskRequestDTOCopyWithImpl<$Res>
    implements _$TaskRequestDTOCopyWith<$Res> {
  __$TaskRequestDTOCopyWithImpl(this._self, this._then);

  final _TaskRequestDTO _self;
  final $Res Function(_TaskRequestDTO) _then;

/// Create a copy of TaskRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,Object? isDone = null,}) {
  return _then(_TaskRequestDTO(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,isDone: null == isDone ? _self.isDone : isDone // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
