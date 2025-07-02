import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class UserUid with EquatableMixin {
  const UserUid(this.uid);

  final String uid;

  @override
  String toString() => 'UserUid(uid: $uid)';

  @override
  List<Object?> get props => [uid];
}
