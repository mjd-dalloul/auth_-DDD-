// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    userAvatar: json['userAvatar'] as String,
    password: json['password'] as String,
    addresses: (json['addresses'] as List)?.map((e) => e as String)?.toList(),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'userAvatar': instance.userAvatar,
      'password': instance.password,
      'addresses': instance.addresses,
      'id': instance.id,
    };
