import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDTO with _$UserDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory UserDTO({
    required String uid,
    required String username,
    String? displayName,
    String? photoUrl,
  }) = _UserDTO;

  const UserDTO._();

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(User user) => UserDTO(
    uid: user.uid,
    displayName: user.displayName,
    username: user.username,
    photoUrl: user.photoUrl,
  );

  User toDomain() => User(
    uid,
    displayName: displayName,
    username: username,
    photoUrl: photoUrl,
  );
}
