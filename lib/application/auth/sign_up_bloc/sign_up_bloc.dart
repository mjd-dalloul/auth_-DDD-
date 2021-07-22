import 'dart:async';

import 'package:auth/domain/auth/i_auth_repository.dart';
import 'package:auth/domain/auth/value_object.dart';
import 'package:auth/domain/user/user.dart';
import 'package:auth/presentation/pages/sign_up_page/misc/address_primitive.dart';
import 'package:auth/services/failure/service_failure.dart';
import 'package:auth/services/interfaces/i_image_picker.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:auth/domain/auth/auth_failure.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IImagePicker imagePicker;
  final IAuthRepository authRepository;

  SignUpBloc(this.imagePicker, this.authRepository)
      : super(SignUpState.initial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
            email: Email(e.email),
          ),
          authFailureOrSuccess: none(),
          serviceFailureOrSuccess: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
            password: Password(e.password),
          ),
          authFailureOrSuccess: none(),
          serviceFailureOrSuccess: none(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
            firstName: FirstName(e.firstName),
          ),
          authFailureOrSuccess: none(),
          serviceFailureOrSuccess: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
            lastName: LastName(e.lastName),
          ),
          authFailureOrSuccess: none(),
          serviceFailureOrSuccess: none(),
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
            phone: Phone(e.phone),
          ),
          authFailureOrSuccess: none(),
          serviceFailureOrSuccess: none(),
        );
      },
      addressesChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
            addressList:
                AddressList(e.addresses.map((address) => address.toDomain())),
          ),
          authFailureOrSuccess: none(),
          serviceFailureOrSuccess: none(),
        );
      },
      imageChangeRequested: (e) async* {
        final imageFailureOrSuccess = await imagePicker.getImage(e.source);
        yield state.copyWith(
          user: state.user.copyWith(
            userAvatar: imageFailureOrSuccess.fold(
                (failure) => UserAvatar(''), (path) => UserAvatar(path)),
          ),
          authFailureOrSuccess: none(),
          serviceFailureOrSuccess: optionOf(imageFailureOrSuccess),
        );
      },
      register: (e) async* {
        Either<AuthFailure, Unit> authFailureOrSuccess;
        if (state.user.failureOption.isNone()) {
          yield state.copyWith(
            isLoading: true,
            authFailureOrSuccess: none(),
            serviceFailureOrSuccess: none(),
          );
          authFailureOrSuccess =
              await authRepository.register(user: state.user);
        }
        yield state.copyWith(
          showErrorMessage: true,
          isLoading: false,
          authFailureOrSuccess: optionOf(authFailureOrSuccess),
        );
      },
    );
  }
}
