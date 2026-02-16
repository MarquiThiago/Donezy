// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoteDTO {

 String get uid; String get title; String get content; DateTime get dateCreated;
/// Create a copy of NoteDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteDTOCopyWith<NoteDTO> get copyWith => _$NoteDTOCopyWithImpl<NoteDTO>(this as NoteDTO, _$identity);

  /// Serializes this NoteDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteDTO&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,title,content,dateCreated);

@override
String toString() {
  return 'NoteDTO(uid: $uid, title: $title, content: $content, dateCreated: $dateCreated)';
}


}

/// @nodoc
abstract mixin class $NoteDTOCopyWith<$Res>  {
  factory $NoteDTOCopyWith(NoteDTO value, $Res Function(NoteDTO) _then) = _$NoteDTOCopyWithImpl;
@useResult
$Res call({
 String uid, String title, String content, DateTime dateCreated
});




}
/// @nodoc
class _$NoteDTOCopyWithImpl<$Res>
    implements $NoteDTOCopyWith<$Res> {
  _$NoteDTOCopyWithImpl(this._self, this._then);

  final NoteDTO _self;
  final $Res Function(NoteDTO) _then;

/// Create a copy of NoteDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? title = null,Object? content = null,Object? dateCreated = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _NoteDTO extends NoteDTO {
  const _NoteDTO({required this.uid, required this.title, required this.content, required this.dateCreated}): super._();
  factory _NoteDTO.fromJson(Map<String, dynamic> json) => _$NoteDTOFromJson(json);

@override final  String uid;
@override final  String title;
@override final  String content;
@override final  DateTime dateCreated;

/// Create a copy of NoteDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteDTOCopyWith<_NoteDTO> get copyWith => __$NoteDTOCopyWithImpl<_NoteDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoteDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteDTO&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,title,content,dateCreated);

@override
String toString() {
  return 'NoteDTO(uid: $uid, title: $title, content: $content, dateCreated: $dateCreated)';
}


}

/// @nodoc
abstract mixin class _$NoteDTOCopyWith<$Res> implements $NoteDTOCopyWith<$Res> {
  factory _$NoteDTOCopyWith(_NoteDTO value, $Res Function(_NoteDTO) _then) = __$NoteDTOCopyWithImpl;
@override @useResult
$Res call({
 String uid, String title, String content, DateTime dateCreated
});




}
/// @nodoc
class __$NoteDTOCopyWithImpl<$Res>
    implements _$NoteDTOCopyWith<$Res> {
  __$NoteDTOCopyWithImpl(this._self, this._then);

  final _NoteDTO _self;
  final $Res Function(_NoteDTO) _then;

/// Create a copy of NoteDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? title = null,Object? content = null,Object? dateCreated = null,}) {
  return _then(_NoteDTO(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
