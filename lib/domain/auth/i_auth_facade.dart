import 'package:auth/domain/auth/value_object.dart';
import 'package:auth/domain/user/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> login({
    @required Email email,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> register({
    @required User user,
  });
}
