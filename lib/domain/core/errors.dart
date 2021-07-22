import 'package:auth/domain/core/value_failure.dart';

class UnexpectedError extends Error {
  final ValueFailure failure;

  UnexpectedError(this.failure);
}

class NoInternetConnectionException implements Exception {}