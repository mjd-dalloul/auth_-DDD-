part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String email) = EmailChanged;
  const factory SignUpEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignUpEvent.firstNameChanged(String firstName) = FirstNameChanged;
  const factory SignUpEvent.lastNameChanged(String lastName) = LastNameChanged;
  const factory SignUpEvent.phoneChanged(String phone) = PhoneChanged;
  const factory SignUpEvent.addressesChanged(KtList<AddressPrimitive> addresses) = addressAdded;
  const factory SignUpEvent.imageChangeRequested(ImageSource source) = ImageChangeRequested;
  const factory SignUpEvent.register() = Register;
}
