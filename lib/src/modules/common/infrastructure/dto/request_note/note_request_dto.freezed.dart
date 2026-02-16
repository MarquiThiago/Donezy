// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoteRequestDTO {

 String get title; String get content; DateTime get dateCreated;
/// Create a copy of NoteRequestDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteRequestDTOCopyWith<NoteRequestDTO> get copyWith => _$NoteRequestDTOCopyWithImpl<NoteRequestDTO>(this as NoteRequestDTO, _$identity);

  /// Serializes this NoteRequestDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteRequestDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,dateCreated);

@override
String toString() {
  return 'NoteRequestDTO(title: $title, content: $content, dateCreated: $dateCreated)';
}


}

/// @nodoc
abstract mixin class $NoteRequestDTOCopyWith<$Res>  {
  factory $NoteRequestDTOCopyWith(NoteRequestDTO value, $Res Function(NoteRequestDTO) _then) = _$NoteRequestDTOCopyWithImpl;
@useResult
$Res call({
 String title, String content, DateTime dateCreated
});




}
/// @nodoc
class _$NoteRequestDTOCopyWithImpl<$Res>
    implements $NoteRequestDTOCopyWith<$Res> {
  _$NoteRequestDTOCopyWithImpl(this._self, this._then);

  final NoteRequestDTO _self;
  final $Res Function(NoteRequestDTO) _then;

/// Create a copy of NoteRequestDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? content = null,Object? dateCreated = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _NoteRequestDTO extends NoteRequestDTO {
  const _NoteRequestDTO({required this.title, required this.content, required this.dateCreated}): super._();
  factory _NoteRequestDTO.fromJson(Map<String, dynamic> json) => _$NoteRequestDTOFromJson(json);

@override final  String title;
@override final  String content;
@override final  DateTime dateCreated;

/// Create a copy of NoteRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteRequestDTOCopyWith<_NoteRequestDTO> get copyWith => __$NoteRequestDTOCopyWithImpl<_NoteRequestDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoteRequestDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteRequestDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,dateCreated);

@override
String toString() {
  return 'NoteRequestDTO(title: $title, content: $content, dateCreated: $dateCreated)';
}


}

/// @nodoc
abstract mixin class _$NoteRequestDTOCopyWith<$Res> implements $NoteRequestDTOCopyWith<$Res> {
  factory _$NoteRequestDTOCopyWith(_NoteRequestDTO value, $Res Function(_NoteRequestDTO) _then) = __$NoteRequestDTOCopyWithImpl;
@override @useResult
$Res call({
 String title, String content, DateTime dateCreated
});




}
/// @nodoc
class __$NoteRequestDTOCopyWithImpl<$Res>
    implements _$NoteRequestDTOCopyWith<$Res> {
  __$NoteRequestDTOCopyWithImpl(this._self, this._then);

  final _NoteRequestDTO _self;
  final $Res Function(_NoteRequestDTO) _then;

/// Create a copy of NoteRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,Object? dateCreated = null,}) {
  return _then(_NoteRequestDTO(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
