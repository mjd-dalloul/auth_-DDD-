part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @required User user,
    @required bool showErrorMessage,
    @required bool isLoading,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
    @required Option<Either<ServiceFailure, String>> serviceFailureOrSuccess,
}) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
    user: User.empty(),
    showErrorMessage: false,
    isLoading: false,
    authFailureOrSuccess: none(),
    serviceFailureOrSuccess: none(),
   );
}
