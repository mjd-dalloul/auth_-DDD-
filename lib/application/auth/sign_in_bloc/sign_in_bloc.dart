import 'dart:async';

import 'package:auth/domain/auth/auth_failure.dart';
import 'package:auth/domain/auth/i_auth_repository.dart';
import 'package:auth/domain/auth/value_object.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepository _authRepository;

  SignInBloc(this._authRepository) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          email: Email(e.email),
          authFailureOrSuccess: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          authFailureOrSuccess: none(),
        );
      },
      login: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;
        if (state.email.isValid() && state.password.isValid()) {
          yield state.copyWith(
            isLoading: true,
            authFailureOrSuccess: none(),
          );
          failureOrSuccess = await _authRepository.login(
            email: state.email,
            password: state.password,
          );
        }
        yield state.copyWith(
          isLoading: false,
          showErrorMessage: true,
          authFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
