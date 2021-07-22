// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required Email email,
      @required Password password,
      @required FirstName firstName,
      @required LastName lastName,
      @required Phone phone,
      @required AddressList addressList,
      @required UserAvatar userAvatar}) {
    return _User(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      addressList: addressList,
      userAvatar: userAvatar,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  Email get email;
  Password get password;
  FirstName get firstName;
  LastName get lastName;
  Phone get phone;
  AddressList get addressList;
  UserAvatar get userAvatar;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      FirstName firstName,
      LastName lastName,
      Phone phone,
      AddressList addressList,
      UserAvatar userAvatar});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object phone = freezed,
    Object addressList = freezed,
    Object userAvatar = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      firstName:
          firstName == freezed ? _value.firstName : firstName as FirstName,
      lastName: lastName == freezed ? _value.lastName : lastName as LastName,
      phone: phone == freezed ? _value.phone : phone as Phone,
      addressList: addressList == freezed
          ? _value.addressList
          : addressList as AddressList,
      userAvatar:
          userAvatar == freezed ? _value.userAvatar : userAvatar as UserAvatar,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      FirstName firstName,
      LastName lastName,
      Phone phone,
      AddressList addressList,
      UserAvatar userAvatar});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object phone = freezed,
    Object addressList = freezed,
    Object userAvatar = freezed,
  }) {
    return _then(_User(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      firstName:
          firstName == freezed ? _value.firstName : firstName as FirstName,
      lastName: lastName == freezed ? _value.lastName : lastName as LastName,
      phone: phone == freezed ? _value.phone : phone as Phone,
      addressList: addressList == freezed
          ? _value.addressList
          : addressList as AddressList,
      userAvatar:
          userAvatar == freezed ? _value.userAvatar : userAvatar as UserAvatar,
    ));
  }
}

/// @nodoc
class _$_User extends _User {
  const _$_User(
      {@required this.email,
      @required this.password,
      @required this.firstName,
      @required this.lastName,
      @required this.phone,
      @required this.addressList,
      @required this.userAvatar})
      : assert(email != null),
        assert(password != null),
        assert(firstName != null),
        assert(lastName != null),
        assert(phone != null),
        assert(addressList != null),
        assert(userAvatar != null),
        super._();

  @override
  final Email email;
  @override
  final Password password;
  @override
  final FirstName firstName;
  @override
  final LastName lastName;
  @override
  final Phone phone;
  @override
  final AddressList addressList;
  @override
  final UserAvatar userAvatar;

  @override
  String toString() {
    return 'User(email: $email, password: $password, firstName: $firstName, lastName: $lastName, phone: $phone, addressList: $addressList, userAvatar: $userAvatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.addressList, addressList) ||
                const DeepCollectionEquality()
                    .equals(other.addressList, addressList)) &&
            (identical(other.userAvatar, userAvatar) ||
                const DeepCollectionEquality()
                    .equals(other.userAvatar, userAvatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(addressList) ^
      const DeepCollectionEquality().hash(userAvatar);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {@required Email email,
      @required Password password,
      @required FirstName firstName,
      @required LastName lastName,
      @required Phone phone,
      @required AddressList addressList,
      @required UserAvatar userAvatar}) = _$_User;

  @override
  Email get email;
  @override
  Password get password;
  @override
  FirstName get firstName;
  @override
  LastName get lastName;
  @override
  Phone get phone;
  @override
  AddressList get addressList;
  @override
  UserAvatar get userAvatar;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
