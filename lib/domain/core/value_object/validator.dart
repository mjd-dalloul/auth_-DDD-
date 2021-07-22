import 'package:auth/domain/core/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

class Validator {
 static Either<ValueFailure<String>, String> validateEmail(String input) =>
     !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
              .hasMatch(input)
          ? left(ValueFailure<String>.invalidEmail(failedValue: input))
          : right(input);

  static Either<ValueFailure<String>, String> validateStringNotEmpty(String input) =>
      input.isNotEmpty
          ? right(input)
          : left(ValueFailure<String>.empty(failedValue: input));
  static Either<ValueFailure<KtList<T>>, KtList<T>> validateListNotEmpty<T>(KtList<T> input) =>
      input.isNotEmpty()
          ? right(input)
          : left(ValueFailure<KtList<T>>.empty(failedValue: input));

  static Either<ValueFailure<String>, String> validatePasswordLength(String input, int minLength) =>
      input.length >= minLength
          ? right(input)
          : left(ValueFailure<String>.shortPassword(failedValue: input));

}
