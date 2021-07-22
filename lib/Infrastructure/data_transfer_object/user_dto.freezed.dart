// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

// ignore: unused_element
  _UserDto call(
      {@required String firstName,
      @required String lastName,
      @required String email,
      @required String phone,
      @nullable String userAvatar,
      @required String password,
      @required List<String> addresses,
      @required String id}) {
    return _UserDto(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      userAvatar: userAvatar,
      password: password,
      addresses: addresses,
      id: id,
    );
  }

// ignore: unused_element
  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  String get firstName;
  String get lastName;
  String get email;
  String get phone;
  @nullable
  String get userAvatar;
  String get password;
  List<String> get addresses;
  String get id;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String phone,
      @nullable String userAvatar,
      String password,
      List<String> addresses,
      String id});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object userAvatar = freezed,
    Object password = freezed,
    Object addresses = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      userAvatar:
          userAvatar == freezed ? _value.userAvatar : userAvatar as String,
      password: password == freezed ? _value.password : password as String,
      addresses:
          addresses == freezed ? _value.addresses : addresses as List<String>,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String phone,
      @nullable String userAvatar,
      String password,
      List<String> addresses,
      String id});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object userAvatar = freezed,
    Object password = freezed,
    Object addresses = freezed,
    Object id = freezed,
  }) {
    return _then(_UserDto(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      userAvatar:
          userAvatar == freezed ? _value.userAvatar : userAvatar as String,
      password: password == freezed ? _value.password : password as String,
      addresses:
          addresses == freezed ? _value.addresses : addresses as List<String>,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@required this.firstName,
      @required this.lastName,
      @required this.email,
      @required this.phone,
      @nullable this.userAvatar,
      @required this.password,
      @required this.addresses,
      @required this.id})
      : assert(firstName != null),
        assert(lastName != null),
        assert(email != null),
        assert(phone != null),
        assert(password != null),
        assert(addresses != null),
        assert(id != null),
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String phone;
  @override
  @nullable
  final String userAvatar;
  @override
  final String password;
  @override
  final List<String> addresses;
  @override
  final String id;

  @override
  String toString() {
    return 'UserDto(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, userAvatar: $userAvatar, password: $password, addresses: $addresses, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.userAvatar, userAvatar) ||
                const DeepCollectionEquality()
                    .equals(other.userAvatar, userAvatar)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(userAvatar) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(addresses) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const _UserDto._() : super._();
  const factory _UserDto(
      {@required String firstName,
      @required String lastName,
      @required String email,
      @required String phone,
      @nullable String userAvatar,
      @required String password,
      @required List<String> addresses,
      @required String id}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get phone;
  @override
  @nullable
  String get userAvatar;
  @override
  String get password;
  @override
  List<String> get addresses;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
