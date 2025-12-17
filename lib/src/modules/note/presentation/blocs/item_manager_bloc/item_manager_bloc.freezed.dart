// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemManagerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemManagerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemManagerEvent()';
}


}

/// @nodoc
class $ItemManagerEventCopyWith<$Res>  {
$ItemManagerEventCopyWith(ItemManagerEvent _, $Res Function(ItemManagerEvent) __);
}


/// @nodoc


class _Add implements ItemManagerEvent {
  const _Add(this.title, this.content);
  

 final  String title;
 final  String content;

/// Create a copy of ItemManagerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCopyWith<_Add> get copyWith => __$AddCopyWithImpl<_Add>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Add&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,title,content);

@override
String toString() {
  return 'ItemManagerEvent.add(title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$AddCopyWith<$Res> implements $ItemManagerEventCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) _then) = __$AddCopyWithImpl;
@useResult
$Res call({
 String title, String content
});




}
/// @nodoc
class __$AddCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(this._self, this._then);

  final _Add _self;
  final $Res Function(_Add) _then;

/// Create a copy of ItemManagerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,}) {
  return _then(_Add(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Delete implements ItemManagerEvent {
  const _Delete(this.id);
  

 final  String id;

/// Create a copy of ItemManagerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCopyWith<_Delete> get copyWith => __$DeleteCopyWithImpl<_Delete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Delete&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ItemManagerEvent.delete(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteCopyWith<$Res> implements $ItemManagerEventCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) _then) = __$DeleteCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(this._self, this._then);

  final _Delete _self;
  final $Res Function(_Delete) _then;

/// Create a copy of ItemManagerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Delete(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Update implements ItemManagerEvent {
  const _Update(this.id, this.title, this.content);
  

 final  String id;
 final  String title;
 final  String content;

/// Create a copy of ItemManagerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCopyWith<_Update> get copyWith => __$UpdateCopyWithImpl<_Update>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Update&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,content);

@override
String toString() {
  return 'ItemManagerEvent.update(id: $id, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$UpdateCopyWith<$Res> implements $ItemManagerEventCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) _then) = __$UpdateCopyWithImpl;
@useResult
$Res call({
 String id, String title, String content
});




}
/// @nodoc
class __$UpdateCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(this._self, this._then);

  final _Update _self;
  final $Res Function(_Update) _then;

/// Create a copy of ItemManagerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,}) {
  return _then(_Update(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ItemManagerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemManagerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemManagerState()';
}


}

/// @nodoc
class $ItemManagerStateCopyWith<$Res>  {
$ItemManagerStateCopyWith(ItemManagerState _, $Res Function(ItemManagerState) __);
}


/// @nodoc


class _Initial implements ItemManagerState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemManagerState.initial()';
}


}




// dart format on
