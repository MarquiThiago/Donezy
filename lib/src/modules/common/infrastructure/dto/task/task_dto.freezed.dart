// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskDTO {

 String get uid; String get title; String get content; bool get isDone; DateTime get dateCreated;
/// Create a copy of TaskDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskDTOCopyWith<TaskDTO> get copyWith => _$TaskDTOCopyWithImpl<TaskDTO>(this as TaskDTO, _$identity);

  /// Serializes this TaskDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskDTO&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.isDone, isDone) || other.isDone == isDone)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,title,content,isDone,dateCreated);

@override
String toString() {
  return 'TaskDTO(uid: $uid, title: $title, content: $content, isDone: $isDone, dateCreated: $dateCreated)';
}


}

/// @nodoc
abstract mixin class $TaskDTOCopyWith<$Res>  {
  factory $TaskDTOCopyWith(TaskDTO value, $Res Function(TaskDTO) _then) = _$TaskDTOCopyWithImpl;
@useResult
$Res call({
 String uid, String title, String content, bool isDone, DateTime dateCreated
});




}
/// @nodoc
class _$TaskDTOCopyWithImpl<$Res>
    implements $TaskDTOCopyWith<$Res> {
  _$TaskDTOCopyWithImpl(this._self, this._then);

  final TaskDTO _self;
  final $Res Function(TaskDTO) _then;

/// Create a copy of TaskDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? title = null,Object? content = null,Object? isDone = null,Object? dateCreated = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,isDone: null == isDone ? _self.isDone : isDone // ignore: cast_nullable_to_non_nullable
as bool,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TaskDTO extends TaskDTO {
  const _TaskDTO({required this.uid, required this.title, required this.content, required this.isDone, required this.dateCreated}): super._();
  factory _TaskDTO.fromJson(Map<String, dynamic> json) => _$TaskDTOFromJson(json);

@override final  String uid;
@override final  String title;
@override final  String content;
@override final  bool isDone;
@override final  DateTime dateCreated;

/// Create a copy of TaskDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskDTOCopyWith<_TaskDTO> get copyWith => __$TaskDTOCopyWithImpl<_TaskDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskDTO&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.isDone, isDone) || other.isDone == isDone)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,title,content,isDone,dateCreated);

@override
String toString() {
  return 'TaskDTO(uid: $uid, title: $title, content: $content, isDone: $isDone, dateCreated: $dateCreated)';
}


}

/// @nodoc
abstract mixin class _$TaskDTOCopyWith<$Res> implements $TaskDTOCopyWith<$Res> {
  factory _$TaskDTOCopyWith(_TaskDTO value, $Res Function(_TaskDTO) _then) = __$TaskDTOCopyWithImpl;
@override @useResult
$Res call({
 String uid, String title, String content, bool isDone, DateTime dateCreated
});




}
/// @nodoc
class __$TaskDTOCopyWithImpl<$Res>
    implements _$TaskDTOCopyWith<$Res> {
  __$TaskDTOCopyWithImpl(this._self, this._then);

  final _TaskDTO _self;
  final $Res Function(_TaskDTO) _then;

/// Create a copy of TaskDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? title = null,Object? content = null,Object? isDone = null,Object? dateCreated = null,}) {
  return _then(_TaskDTO(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,isDone: null == isDone ? _self.isDone : isDone // ignore: cast_nullable_to_non_nullable
as bool,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
