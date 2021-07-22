import 'package:auth/domain/auth/auth_failure.dart';
import 'package:auth/domain/auth/i_auth_repository.dart';
import 'package:auth/domain/auth/value_object.dart';
import 'package:auth/domain/user/user.dart';
import 'package:dartz/dartz.dart';

class AuthRepository implements IAuthRepository {
  //todo override IAuthfacade and
  @override
  Future<Either<AuthFailure, Unit>> login({Email email, Password password}) {
    return Future.delayed(Duration(seconds: 2), () => right(unit));
  }
  @override
  Future<Either<AuthFailure, Unit>> register({User user,}) {
    return Future.delayed(Duration(seconds: 2), () => right(unit));
  }

}