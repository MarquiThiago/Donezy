import 'package:equatable/equatable.dart';
import 'package:donezy_app/src/modules/common/domain/models/user_uid.dart';

class User extends UserUid with EquatableMixin {
  const User(
    super.uid, {
    required this.username,
    this.displayName,
    this.photoUrl,
  });

  final String username;
  final String? displayName;
  final String? photoUrl;

  @override
  List<Object?> get props => [uid, username, displayName, photoUrl];
}
