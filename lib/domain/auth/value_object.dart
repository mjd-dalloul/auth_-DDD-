import 'package:auth/domain/core/value_failure.dart';
import 'package:auth/domain/core/value_object/validator.dart';
import 'package:auth/domain/core/value_object/value_object.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Email._(this.value);

  factory Email(String input) => Email._(Validator.validateStringNotEmpty(input)
      .flatMap((_) => Validator.validateEmail(input)));
}

class Password extends ValueObject<String> {
  static const int passwordMinLength = 5;
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  factory Password(String input) =>
      Password._(Validator.validateStringNotEmpty(input).flatMap(
          (a) => Validator.validatePasswordLength(input, passwordMinLength)));
}

class Phone extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Phone._(this.value);

  factory Phone(String input) =>
      Phone._(Validator.validateStringNotEmpty(input));
}

class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const FirstName._(this.value);

  factory FirstName(String input) =>
      FirstName._(Validator.validateStringNotEmpty(input));
}

class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const LastName._(this.value);

  factory LastName(String input) =>
      LastName._(Validator.validateStringNotEmpty(input));
}

class Address extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Address._(this.value);

  factory Address(String input) =>
      Address._(Validator.validateStringNotEmpty(input));
}

class AddressList extends ValueObject<KtList<Address>> {
  @override
  final Either<ValueFailure<KtList<Address>>, KtList<Address>> value;

  const AddressList._(this.value);

  factory AddressList(KtList<Address> input) =>
      AddressList._(Validator.validateListNotEmpty<Address>(input));
}

class UserAvatar extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  @override
  Either<ValueFailure<String>, String> validateData(String input) {}

  const UserAvatar._(this.value);

  factory UserAvatar(String input) {
    return UserAvatar._(Validator.validateStringNotEmpty(input));
  }
}
