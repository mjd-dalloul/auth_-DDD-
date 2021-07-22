import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:auth/domain/core/value_failure.dart';
import 'package:auth/domain/core/errors.dart';


@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  ///called when you one hundred percent sure that the value in the
  ///value object is right if not this will throw an error exception
  ///and crash the application
  T getValue() => value.fold((f) => throw UnexpectedError(f), (r) => r);

  ///fold this value to check if the value object has a failure or not
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit =>
      value.fold((f) => left(f), (r) => right(unit));

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';

}