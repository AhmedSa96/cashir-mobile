import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

enum UserType { admin, compony }

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String name,
    required String phone,
    // required DateTime birthDate,
    @Default(UserType.compony) UserType userType,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
