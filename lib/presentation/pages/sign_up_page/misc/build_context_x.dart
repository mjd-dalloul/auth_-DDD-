import 'package:auth/presentation/pages/sign_up_page/misc/address_primitive.dart';
import 'package:kt_dart/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension AddressListX on BuildContext {
  KtList<AddressPrimitive> get addressList =>
      Provider.of<AddressPrimitiveList>(this, listen: false).value;
  set addressList(KtList<AddressPrimitive> value) =>
      Provider.of<AddressPrimitiveList>(this, listen: false).value = value;
}