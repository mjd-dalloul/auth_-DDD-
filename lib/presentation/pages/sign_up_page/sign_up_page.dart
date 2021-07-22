import 'dart:io';

import 'package:auth/application/auth/sign_up_bloc/sign_up_bloc.dart';
import 'package:auth/domain/auth/value_object.dart';
import 'package:auth/injection.dart';
import 'package:auth/presentation/pages/sign_in_page.dart';
import 'package:auth/presentation/pages/sign_up_page/misc/address_primitive.dart';
import 'package:auth/presentation/widgets/widgets.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:sailor/sailor.dart';
import 'package:kt_dart/collection.dart';
import 'misc/build_context_x.dart';

class SignUpProvider extends StatelessWidget {
  const SignUpProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => sl<SignUpBloc>(),
        child: ChangeNotifierProvider(
          create: (_) => AddressPrimitiveList(),
          child: SignUpPage(),
        ),
      );
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  static const String routeName = '/sign_up_page';

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(() {
          //ignore no new request has been sent
        },
            (failureOrSuccess) => failureOrSuccess.fold(
                (failure) => FlushbarHelper.createError(
                        message: failure.maybeMap(
                            orElse: () => null,
                            serverError: (_) =>
                                'Server error please try again later',
                            emailAlreadyInUse: (failureValue) =>
                                'Email ${state.user.email.getValue()} already in use'))
                    .show(context),
                (success) => FlushbarHelper.createSuccess(
                        message: 'Register successfully')
                    .show(context)));
      },
      child: Scaffold(
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus.unfocus(),
          child: ListView(
            children: [
              const AuthPageHeader(title: 'Sign-up Page'),
              const SizedBox(
                height: 32,
              ),
              const SignUpForm(),
              const SizedBox(
                height: 32.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Already has an account ?\n',
                  style: Theme.of(context).textTheme.subtitle1,
                  children: [
                    TextSpan(
                      text: 'Sign-in now',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(color: Colors.blueAccent),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => sl<Sailor>().navigate(
                              SignInPage.routeName,
                              navigationType: NavigationType.pushAndRemoveUntil,
                              removeUntilPredicate: (_) => false,
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (p, c) => p.showErrorMessage != c.showErrorMessage,
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
                GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context2) => Container(
                      alignment: Alignment.center,
                      height: 100,
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkResponse(
                            onTap: () {
                              context.read<SignUpBloc>().add(
                                  SignUpEvent.imageChangeRequested(
                                      ImageSource.gallery));
                              sl<Sailor>().pop();
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.photo_library_outlined,
                                  size: 35,
                                ),
                                Text(
                                  'Gallery',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                          ),
                          InkResponse(
                            onTap: () {
                              context.read<SignUpBloc>().add(
                                  SignUpEvent.imageChangeRequested(
                                      ImageSource.camera));
                              sl<Sailor>().pop();
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.camera_alt_outlined,
                                  size: 35,
                                ),
                                Text(
                                  'Camera',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: MediaQuery.of(context).size.width * .15,
                    backgroundImage: state.user.userAvatar.value.fold(
                        (failure) => null, (path) => FileImage(File(path))),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                CustomTextField(
                  label: 'First Name',
                  icon: Icons.person,
                  obscureText: false,
                  onChanged: (value) => context
                      .read<SignUpBloc>()
                      .add(SignUpEvent.firstNameChanged(value)),
                  validator: (_) => context
                      .read<SignUpBloc>()
                      .state
                      .user
                      .firstName
                      .value
                      .fold(
                          (failure) => failure.maybeMap(
                              orElse: () => null,
                              empty: (_) => 'First name can not be empty'),
                          (_) => null),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                CustomTextField(
                  label: 'Last Name',
                  icon: Icons.person,
                  obscureText: false,
                  onChanged: (value) => context
                      .read<SignUpBloc>()
                      .add(SignUpEvent.lastNameChanged(value)),
                  validator: (_) => context
                      .read<SignUpBloc>()
                      .state
                      .user
                      .lastName
                      .value
                      .fold(
                          (failure) => failure.maybeMap(
                              orElse: () => null,
                              empty: (_) => 'Last name can not be empty'),
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
                      .read<SignUpBloc>()
                      .add(SignUpEvent.passwordChanged(value)),
                  validator: (_) => context
                      .read<SignUpBloc>()
                      .state
                      .user
                      .password
                      .value
                      .fold(
                          (failure) => failure.maybeMap(
                              orElse: () => null,
                              shortPassword: (_) =>
                                  'Password length must be at least ${Password.passwordMinLength}',
                              empty: (_) => 'Password can not be empty'),
                          (_) => null),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                CustomTextField(
                  label: 'Email',
                  icon: Icons.email_outlined,
                  obscureText: false,
                  onChanged: (value) => context
                      .read<SignUpBloc>()
                      .add(SignUpEvent.emailChanged(value)),
                  validator: (_) => context
                      .read<SignUpBloc>()
                      .state
                      .user
                      .email
                      .value
                      .fold(
                          (failure) => failure.maybeMap(
                              orElse: () => null,
                              invalidEmail: (_) => 'Invalid email',
                              empty: (_) => 'Email can not be empty'),
                          (_) => null),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                CustomTextField(
                  label: 'PHONE',
                  icon: Icons.phone,
                  obscureText: false,
                  onChanged: (value) => context
                      .read<SignUpBloc>()
                      .add(SignUpEvent.phoneChanged(value)),
                  validator: (_) => context
                      .read<SignUpBloc>()
                      .state
                      .user
                      .phone
                      .value
                      .fold(
                          (failure) => failure.maybeMap(
                              orElse: () => null,
                              empty: (_) => 'Phone can not be empty'),
                          (_) => null),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                AddressForm(),
                const SizedBox(
                  height: 16.0,
                ),
                ListTile(
                  onTap: () {
                    context.addressList = context.addressList
                        .plusElement(AddressPrimitive.empty());
                    context
                        .read<SignUpBloc>()
                        .add(SignUpEvent.addressesChanged(context.addressList));
                  },
                  title: const Text('Add Address'),
                  leading: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(Icons.add),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                GestureDetector(
                  onTap: () => context
                      .read<SignUpBloc>()
                      .add(const SignUpEvent.register()),
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
                        'Sign up',
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

class AddressForm extends StatelessWidget {
  const AddressForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AddressPrimitiveList>(builder: (context, addresses, child) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: addresses.value.size,
        itemBuilder: (context, index) => AddressTile(
          index: index,
          key: ValueKey(context.addressList[index].id),
        ),
        physics: const NeverScrollableScrollPhysics(),
      );
    });
  }
}

class AddressTile extends StatelessWidget {
  final int index;

  const AddressTile({@required this.index, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addressPrimitive =
        context.addressList.getOrElse(index, (_) => AddressPrimitive.empty());
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: .19,
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.red,
          onTap: () {
            context.addressList =
                context.addressList.minusElement(addressPrimitive);

            context
                .read<SignUpBloc>()
                .add(SignUpEvent.addressesChanged(context.addressList));
          },
        )
      ],
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
        child: ListTile(
          title: TextFormField(
            autovalidateMode: context.read<SignUpBloc>().state.showErrorMessage
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            decoration: InputDecoration(
              hintText: 'Address ${index + 1}',
              prefixIcon: Icon(
                Icons.location_city,
                color: Colors.redAccent,
              ),
            ),
            onChanged: (value) {
              context.addressList = context.addressList.map((address) =>
                  address == addressPrimitive
                      ? addressPrimitive.copyWith(address: value)
                      : address);
              context
                  .read<SignUpBloc>()
                  .add(SignUpEvent.addressesChanged(context.addressList));
            },
            validator: (_) => context
                .read<SignUpBloc>()
                .state
                .user
                .addressList
                .value
                .fold(
                    (f) => null,
                    (address) => address[index].value.fold(
                        (failure) => failure.maybeMap(
                            orElse: () => null,
                            empty: (_) =>
                                'Address ${index + 1} can not be empty'),
                        (_) => null)),
          ),
        ),
      ),
    );
  }
}
