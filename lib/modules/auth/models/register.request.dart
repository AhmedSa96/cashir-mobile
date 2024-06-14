import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.request.freezed.dart';
part 'register.request.g.dart';

@freezed
class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    required String email,
    required String password,
    required String name,
    required String? phone,
    required DateTime? birthDate,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}
