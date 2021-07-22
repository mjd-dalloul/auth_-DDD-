// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  FirstNameChanged firstNameChanged(String firstName) {
    return FirstNameChanged(
      firstName,
    );
  }

// ignore: unused_element
  LastNameChanged lastNameChanged(String lastName) {
    return LastNameChanged(
      lastName,
    );
  }

// ignore: unused_element
  PhoneChanged phoneChanged(String phone) {
    return PhoneChanged(
      phone,
    );
  }

// ignore: unused_element
  addressAdded addressesChanged(KtList<AddressPrimitive> addresses) {
    return addressAdded(
      addresses,
    );
  }

// ignore: unused_element
  ImageChangeRequested imageChangeRequested(ImageSource source) {
    return ImageChangeRequested(
      source,
    );
  }

// ignore: unused_element
  Register register() {
    return const Register();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult phoneChanged(String phone),
    @required TResult addressesChanged(KtList<AddressPrimitive> addresses),
    @required TResult imageChangeRequested(ImageSource source),
    @required TResult register(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult phoneChanged(String phone),
    TResult addressesChanged(KtList<AddressPrimitive> addresses),
    TResult imageChangeRequested(ImageSource source),
    TResult register(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult addressesChanged(addressAdded value),
    @required TResult imageChangeRequested(ImageChangeRequested value),
    @required TResult register(Register value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult addressesChanged(addressAdded value),
    TResult imageChangeRequested(ImageChangeRequested value),
    TResult register(Register value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult phoneChanged(String phone),
    @required TResult addressesChanged(KtList<AddressPrimitive> addresses),
    @required TResult imageChangeRequested(ImageSource source),
    @required TResult register(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult phoneChanged(String phone),
    TResult addressesChanged(KtList<AddressPrimitive> addresses),
    TResult imageChangeRequested(ImageSource source),
    TResult register(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult addressesChanged(addressAdded value),
    @required TResult imageChangeRequested(ImageChangeRequested value),
    @required TResult register(Register value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult addressesChanged(addressAdded value),
    TResult imageChangeRequested(ImageChangeRequested value),
    TResult register(Register value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult phoneChanged(String phone),
    @required TResult addressesChanged(KtList<AddressPrimitive> addresses),
    @required TResult imageChangeRequested(ImageSource source),
    @required TResult register(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult phoneChanged(String phone),
    TResult addressesChanged(KtList<AddressPrimitive> addresses),
    TResult imageChangeRequested(ImageSource source),
    TResult register(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult addressesChanged(addressAdded value),
    @required TResult imageChangeRequested(ImageChangeRequested value),
    @required TResult register(Register value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult addressesChanged(addressAdded value),
    TResult imageChangeRequested(ImageChangeRequested value),
    TResult register(Register value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstName});
}

/// @nodoc
class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $FirstNameChangedCopyWith<$Res> {
  _$FirstNameChangedCopyWithImpl(
      FirstNameChanged _value, $Res Function(FirstNameChanged) _then)
      : super(_value, (v) => _then(v as FirstNameChanged));

  @override
  FirstNameChanged get _value => super._value as FirstNameChanged;

  @override
  $Res call({
    Object firstName = freezed,
  }) {
    return _then(FirstNameChanged(
      firstName == freezed ? _value.firstName : firstName as String,
    ));
  }
}

/// @nodoc
class _$FirstNameChanged implements FirstNameChanged {
  const _$FirstNameChanged(this.firstName) : assert(firstName != null);

  @override
  final String firstName;

  @override
  String toString() {
    return 'SignUpEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirstNameChanged &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstName);

  @JsonKey(ignore: true)
  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult phoneChanged(String phone),
    @required TResult addressesChanged(KtList<AddressPrimitive> addresses),
    @required TResult imageChangeRequested(ImageSource source),
    @required TResult register(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult phoneChanged(String phone),
    TResult addressesChanged(KtList<AddressPrimitive> addresses),
    TResult imageChangeRequested(ImageSource source),
    TResult register(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult addressesChanged(addressAdded value),
    @required TResult imageChangeRequested(ImageChangeRequested value),
    @required TResult register(Register value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult addressesChanged(addressAdded value),
    TResult imageChangeRequested(ImageChangeRequested value),
    TResult register(Register value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements SignUpEvent {
  const factory FirstNameChanged(String firstName) = _$FirstNameChanged;

  String get firstName;
  @JsonKey(ignore: true)
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith;
}

/// @nodoc
abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastName});
}

/// @nodoc
class _$LastNameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $LastNameChangedCopyWith<$Res> {
  _$LastNameChangedCopyWithImpl(
      LastNameChanged _value, $Res Function(LastNameChanged) _then)
      : super(_value, (v) => _then(v as LastNameChanged));

  @override
  LastNameChanged get _value => super._value as LastNameChanged;

  @override
  $Res call({
    Object lastName = freezed,
  }) {
    return _then(LastNameChanged(
      lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

/// @nodoc
class _$LastNameChanged implements LastNameChanged {
  const _$LastNameChanged(this.lastName) : assert(lastName != null);

  @override
  final String lastName;

  @override
  String toString() {
    return 'SignUpEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastNameChanged &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastName);

  @JsonKey(ignore: true)
  @override
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      _$LastNameChangedCopyWithImpl<LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult phoneChanged(String phone),
    @required TResult addressesChanged(KtList<AddressPrimitive> addresses),
    @required TResult imageChangeRequested(ImageSource source),
    @required TResult register(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult phoneChanged(String phone),
    TResult addressesChanged(KtList<AddressPrimitive> addresses),
    TResult imageChangeRequested(ImageSource source),
    TResult register(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult addressesChanged(addressAdded value),
    @required TResult imageChangeRequested(ImageChangeRequested value),
    @required TResult register(Register value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult addressesChanged(addressAdded value),
    TResult imageChangeRequested(ImageChangeRequested value),
    TResult register(Register value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements SignUpEvent {
  const factory LastNameChanged(String lastName) = _$LastNameChanged;

  String get lastName;
  @JsonKey(ignore: true)
  $LastNameChangedCopyWith<LastNameChanged> get copyWith;
}

/// @nodoc
abstract class $PhoneChangedCopyWith<$Res> {
  factory $PhoneChangedCopyWith(
          PhoneChanged value, $Res Function(PhoneChanged) then) =
      _$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(
      PhoneChanged _value, $Res Function(PhoneChanged) _then)
      : super(_value, (v) => _then(v as PhoneChanged));

  @override
  PhoneChanged get _value => super._value as PhoneChanged;

  @override
  $Res call({
    Object phone = freezed,
  }) {
    return _then(PhoneChanged(
      phone == freezed ? _value.phone : phone as String,
    ));
  }
}

/// @nodoc
class _$PhoneChanged implements PhoneChanged {
  const _$PhoneChanged(this.phone) : assert(phone != null);

  @override
  final String phone;

  @override
  String toString() {
    return 'SignUpEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneChanged &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult phoneChanged(String phone),
    @required TResult addressesChanged(KtList<AddressPrimitive> addresses),
    @required TResult imageChangeRequested(ImageSource source),
    @required TResult register(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult phoneChanged(String phone),
    TResult addressesChanged(KtList<AddressPrimitive> addresses),
    TResult imageChangeRequested(ImageSource source),
    TResult register(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult addressesChanged(addressAdded value),
    @required TResult imageChangeRequested(ImageChangeRequested value),
    @required TResult register(Register value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult addressesChanged(addressAdded value),
    TResult imageChangeRequested(ImageChangeRequested value),
    TResult register(Register value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements SignUpEvent {
  const factory PhoneChanged(String phone) = _$PhoneChanged;

  String get phone;
  @JsonKey(ignore: true)
  $PhoneChangedCopyWith<PhoneChanged> get copyWith;
}

/// @nodoc
abstract class $addressAddedCopyWith<$Res> {
  factory $addressAddedCopyWith(
          addressAdded value, $Res Function(addressAdded) then) =
      _$addressAddedCopyWithImpl<$Res>;
  $Res call({KtList<AddressPrimitive> addresses});
}

/// @nodoc
class _$addressAddedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $addressAddedCopyWith<$Res> {
  _$addressAddedCopyWithImpl(
      addressAdded _value, $Res Function(addressAdded) _then)
      : super(_value, (v) => _then(v as addressAdded));

  @override
  addressAdded get _value => super._value as addressAdded;

  @override
  $Res call({
    Object addresses = freezed,
  }) {
    return _then(addressAdded(
      addresses == freezed
          ? _value.addresses
          : addresses as KtList<AddressPrimitive>,
    ));
  }
}

/// @nodoc
class _$addressAdded implements addressAdded {
  const _$addressAdded(this.addresses) : assert(addresses != null);

  @override
  final KtList<AddressPrimitive> addresses;

  @override
  String toString() {
    return 'SignUpEvent.addressesChanged(addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is addressAdded &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(addresses);

  @JsonKey(ignore: true)
  @override
  $addressAddedCopyWith<addressAdded> get copyWith =>
      _$addressAddedCopyWithImpl<addressAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult phoneChanged(String phone),
    @required TResult addressesChanged(KtList<AddressPrimitive> addresses),
    @required TResult imageChangeRequested(ImageSource source),
    @required TResult register(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return addressesChanged(addresses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult phoneChanged(String phone),
    TResult addressesChanged(KtList<AddressPrimitive> addresses),
    TResult imageChangeRequested(ImageSource source),
    TResult register(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addressesChanged != null) {
      return addressesChanged(addresses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult addressesChanged(addressAdded value),
    @required TResult imageChangeRequested(ImageChangeRequested value),
    @required TResult register(Register value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return addressesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult addressesChanged(addressAdded value),
    TResult imageChangeRequested(ImageChangeRequested value),
    TResult register(Register value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addressesChanged != null) {
      return addressesChanged(this);
    }
    return orElse();
  }
}

abstract class addressAdded implements SignUpEvent {
  const factory addressAdded(KtList<AddressPrimitive> addresses) =
      _$addressAdded;

  KtList<AddressPrimitive> get addresses;
  @JsonKey(ignore: true)
  $addressAddedCopyWith<addressAdded> get copyWith;
}

/// @nodoc
abstract class $ImageChangeRequestedCopyWith<$Res> {
  factory $ImageChangeRequestedCopyWith(ImageChangeRequested value,
          $Res Function(ImageChangeRequested) then) =
      _$ImageChangeRequestedCopyWithImpl<$Res>;
  $Res call({ImageSource source});
}

/// @nodoc
class _$ImageChangeRequestedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $ImageChangeRequestedCopyWith<$Res> {
  _$ImageChangeRequestedCopyWithImpl(
      ImageChangeRequested _value, $Res Function(ImageChangeRequested) _then)
      : super(_value, (v) => _then(v as ImageChangeRequested));

  @override
  ImageChangeRequested get _value => super._value as ImageChangeRequested;

  @override
  $Res call({
    Object source = freezed,
  }) {
    return _then(ImageChangeRequested(
      source == freezed ? _value.source : source as ImageSource,
    ));
  }
}

/// @nodoc
class _$ImageChangeRequested implements ImageChangeRequested {
  const _$ImageChangeRequested(this.source) : assert(source != null);

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'SignUpEvent.imageChangeRequested(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageChangeRequested &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(source);

  @JsonKey(ignore: true)
  @override
  $ImageChangeRequestedCopyWith<ImageChangeRequested> get copyWith =>
      _$ImageChangeRequestedCopyWithImpl<ImageChangeRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult phoneChanged(String phone),
    @required TResult addressesChanged(KtList<AddressPrimitive> addresses),
    @required TResult imageChangeRequested(ImageSource source),
    @required TResult register(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return imageChangeRequested(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult phoneChanged(String phone),
    TResult addressesChanged(KtList<AddressPrimitive> addresses),
    TResult imageChangeRequested(ImageSource source),
    TResult register(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageChangeRequested != null) {
      return imageChangeRequested(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult addressesChanged(addressAdded value),
    @required TResult imageChangeRequested(ImageChangeRequested value),
    @required TResult register(Register value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return imageChangeRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult addressesChanged(addressAdded value),
    TResult imageChangeRequested(ImageChangeRequested value),
    TResult register(Register value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageChangeRequested != null) {
      return imageChangeRequested(this);
    }
    return orElse();
  }
}

abstract class ImageChangeRequested implements SignUpEvent {
  const factory ImageChangeRequested(ImageSource source) =
      _$ImageChangeRequested;

  ImageSource get source;
  @JsonKey(ignore: true)
  $ImageChangeRequestedCopyWith<ImageChangeRequested> get copyWith;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(Register _value, $Res Function(Register) _then)
      : super(_value, (v) => _then(v as Register));

  @override
  Register get _value => super._value as Register;
}

/// @nodoc
class _$Register implements Register {
  const _$Register();

  @override
  String toString() {
    return 'SignUpEvent.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Register);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult phoneChanged(String phone),
    @required TResult addressesChanged(KtList<AddressPrimitive> addresses),
    @required TResult imageChangeRequested(ImageSource source),
    @required TResult register(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return register();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult phoneChanged(String phone),
    TResult addressesChanged(KtList<AddressPrimitive> addresses),
    TResult imageChangeRequested(ImageSource source),
    TResult register(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult addressesChanged(addressAdded value),
    @required TResult imageChangeRequested(ImageChangeRequested value),
    @required TResult register(Register value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(addressesChanged != null);
    assert(imageChangeRequested != null);
    assert(register != null);
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult addressesChanged(addressAdded value),
    TResult imageChangeRequested(ImageChangeRequested value),
    TResult register(Register value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class Register implements SignUpEvent {
  const factory Register() = _$Register;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

// ignore: unused_element
  _SignUpState call(
      {@required
          User user,
      @required
          bool showErrorMessage,
      @required
          bool isLoading,
      @required
          Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
      @required
          Option<Either<ServiceFailure, String>> serviceFailureOrSuccess}) {
    return _SignUpState(
      user: user,
      showErrorMessage: showErrorMessage,
      isLoading: isLoading,
      authFailureOrSuccess: authFailureOrSuccess,
      serviceFailureOrSuccess: serviceFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  User get user;
  bool get showErrorMessage;
  bool get isLoading;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  Option<Either<ServiceFailure, String>> get serviceFailureOrSuccess;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {User user,
      bool showErrorMessage,
      bool isLoading,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
      Option<Either<ServiceFailure, String>> serviceFailureOrSuccess});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object user = freezed,
    Object showErrorMessage = freezed,
    Object isLoading = freezed,
    Object authFailureOrSuccess = freezed,
    Object serviceFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthFailure, Unit>>,
      serviceFailureOrSuccess: serviceFailureOrSuccess == freezed
          ? _value.serviceFailureOrSuccess
          : serviceFailureOrSuccess as Option<Either<ServiceFailure, String>>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      bool showErrorMessage,
      bool isLoading,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
      Option<Either<ServiceFailure, String>> serviceFailureOrSuccess});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object user = freezed,
    Object showErrorMessage = freezed,
    Object isLoading = freezed,
    Object authFailureOrSuccess = freezed,
    Object serviceFailureOrSuccess = freezed,
  }) {
    return _then(_SignUpState(
      user: user == freezed ? _value.user : user as User,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthFailure, Unit>>,
      serviceFailureOrSuccess: serviceFailureOrSuccess == freezed
          ? _value.serviceFailureOrSuccess
          : serviceFailureOrSuccess as Option<Either<ServiceFailure, String>>,
    ));
  }
}

/// @nodoc
class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {@required this.user,
      @required this.showErrorMessage,
      @required this.isLoading,
      @required this.authFailureOrSuccess,
      @required this.serviceFailureOrSuccess})
      : assert(user != null),
        assert(showErrorMessage != null),
        assert(isLoading != null),
        assert(authFailureOrSuccess != null),
        assert(serviceFailureOrSuccess != null);

  @override
  final User user;
  @override
  final bool showErrorMessage;
  @override
  final bool isLoading;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;
  @override
  final Option<Either<ServiceFailure, String>> serviceFailureOrSuccess;

  @override
  String toString() {
    return 'SignUpState(user: $user, showErrorMessage: $showErrorMessage, isLoading: $isLoading, authFailureOrSuccess: $authFailureOrSuccess, serviceFailureOrSuccess: $serviceFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccess, authFailureOrSuccess)) &&
            (identical(
                    other.serviceFailureOrSuccess, serviceFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.serviceFailureOrSuccess, serviceFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess) ^
      const DeepCollectionEquality().hash(serviceFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
          {@required
              User user,
          @required
              bool showErrorMessage,
          @required
              bool isLoading,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
          @required
              Option<Either<ServiceFailure, String>> serviceFailureOrSuccess}) =
      _$_SignUpState;

  @override
  User get user;
  @override
  bool get showErrorMessage;
  @override
  bool get isLoading;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  Option<Either<ServiceFailure, String>> get serviceFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$SignUpStateCopyWith<_SignUpState> get copyWith;
}
