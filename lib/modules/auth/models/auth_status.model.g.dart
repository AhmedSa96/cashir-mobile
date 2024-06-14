// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_status.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStatusImpl _$$AuthStatusImplFromJson(Map<String, dynamic> json) =>
    _$AuthStatusImpl(
      isLoggedIn: json['isLoggedIn'] as bool,
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthStatusImplToJson(_$AuthStatusImpl instance) =>
    <String, dynamic>{
      'isLoggedIn': instance.isLoggedIn,
      'token': instance.token,
      'user': instance.user,
    };
