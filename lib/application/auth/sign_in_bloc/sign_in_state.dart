part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @required Email email,
    @required Password password,
    @required bool showErrorMessage,
    @required bool isLoading,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
    email: Email(''),
    password: Password(''),
    showErrorMessage: false,
    isLoading: false,
    authFailureOrSuccess: none(),
   );
}