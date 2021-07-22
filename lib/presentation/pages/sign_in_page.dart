import 'package:auth/application/auth/sign_in_bloc/sign_in_bloc.dart';
import 'package:auth/injection.dart';
import 'package:auth/presentation/pages/sign_up_page/sign_up_page.dart';
import 'package:auth/presentation/widgets/widgets.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';

class SignInProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => sl<SignInBloc>(),
        child: SignInPage(),
      );
}

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);
  static const String routeName = '/sign_in_page';

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(() {
          //ignore no new request has been sent
        },
            (failureOrSuccess) => failureOrSuccess.fold(
                  (failure) => FlushbarHelper.createError(
                      message: failure.maybeMap(
                    invalidEmailAndPassword: (_) => 'Invalid email or password',
                    orElse: () => null,
                    serverError: (_) => 'server error please try again',
                  )).show(context),
                  (success) => FlushbarHelper.createSuccess(
                      message: 'Logged in successfully').show(context),
                ));
      },
      child: Scaffold(
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus.unfocus(),
          child: ListView(
            children: [
              const AuthPageHeader(title: 'Login Page'),
              const SizedBox(
                height: 32,
              ),
              const SignInForm(),
              const SizedBox(
                height: 32.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'You do not have account ?\n',
                  style: Theme.of(context).textTheme.subtitle1,
                  children: [
                    TextSpan(
                      text: 'Sign-up now',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(color: Colors.blueAccent),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => sl<Sailor>().navigate(
                              SignUpPage.routeName,
                              navigationType: NavigationType.push,
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Form(
            autovalidateMode: state.showErrorMessage
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextField(
                  label: 'Email',
                  icon: Icons.mail,
                  obscureText: false,
                  onChanged: (value) => context
                      .read<SignInBloc>()
                      .add(SignInEvent.emailChanged(value)),
                  validator: (_) =>
                      context.read<SignInBloc>().state.email.value.fold(
                          (failure) => failure.maybeMap(
                                orElse: () => null,
                                invalidEmail: (_) => 'Invalid Email',
                                empty: (_) => 'Email can not be empty',
                              ),
                          (_) => null),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                CustomTextField(
                  label: 'Password',
                  icon: Icons.remove_red_eye,
                  obscureText: true,
                  onChanged: (value) => context
                      .read<SignInBloc>()
                      .add(SignInEvent.passwordChanged(value)),
                  validator: (_) =>
                      context.read<SignInBloc>().state.password.value.fold(
                          (failure) => failure.maybeMap(
                                orElse: () => null,
                                empty: (_) => 'Password can not be empty',
                              ),
                          (_) => null),
                ),
                const SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () =>
                      context.read<SignInBloc>().add(const SignInEvent.login()),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.redAccent),
                      alignment: Alignment.center,
                      child: Text(
                        'Login',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
