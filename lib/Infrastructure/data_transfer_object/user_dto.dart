import 'package:auth/domain/auth/value_object.dart';
import 'package:auth/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:kt_dart/collection.dart' as Kt;

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String phone,
    @nullable String userAvatar,
    @required String password,
    @required List<String> addresses,
    @required String id,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) => UserDto(
        firstName: user.firstName.getValue(),
        lastName: user.lastName.getValue(),
        email: user.email.getValue(),
        phone: user.phone.getValue(),
        password: user.password.getValue(),
        addresses: user.addressList
            .getValue()
            .asList()
            .map((address) => address.getValue())
            .toList(),
        id: Uuid().v1(),
      );

  User toDomain() => User(
        email: Email(email),
        password: Password(password),
        firstName: FirstName(firstName),
        lastName: LastName(lastName),
        phone: Phone(phone),
        addressList: AddressList(
            addresses.map((address) => Address(address)).toImmutableList()),
        userAvatar: UserAvatar(userAvatar),
      );

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
