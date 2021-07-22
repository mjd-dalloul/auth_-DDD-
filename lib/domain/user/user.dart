import 'package:auth/domain/auth/value_object.dart';
import 'package:auth/domain/core/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const User._();

  const factory User({
    @required Email email,
    @required Password password,
    @required FirstName firstName,
    @required LastName lastName,
    @required Phone phone,
    @required AddressList addressList,
    @required UserAvatar userAvatar,
  }) = _User;

  factory User.empty() => User(
        email: Email(''),
        password: Password(''),
        firstName: FirstName(''),
        lastName: LastName(''),
        phone: Phone(''),
        addressList: AddressList(emptyList<Address>()),
        userAvatar: UserAvatar(''),
      );

  Option<ValueFailure<dynamic>> get failureOption => email.failureOrUnit.fold(
        (failure) => some(failure),
        (_) => firstName.failureOrUnit.fold(
          (failure) => some(failure),
          (_) => lastName.failureOrUnit.fold(
            (failure) => some(failure),
            (_) => password.failureOrUnit.fold(
              (failure) => some(failure),
              (_) => phone.failureOrUnit.fold(
                (failure) => some(failure),
                (_) => addressList.value.fold(
                  (failure) => some(failure),
                  (addresses) => addresses
                      .map((address) => address.failureOrUnit
                          .fold((failure) => some(failure), (_) => none()))
                      .filter((a) => a.isSome())
                      .getOrElse(0, (_) => none())
                      .fold(() => none(), (failure) => some(failure)),
                ),
              ),
            ),
          ),
        ),
      );
}
