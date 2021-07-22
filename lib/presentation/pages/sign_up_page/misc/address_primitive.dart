import 'package:auth/domain/auth/value_object.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:uuid/uuid.dart';

part 'address_primitive.freezed.dart';

class AddressPrimitiveList extends ValueNotifier<KtList<AddressPrimitive>> {
  AddressPrimitiveList() : super(emptyList<AddressPrimitive>());
}

@freezed
abstract class AddressPrimitive with _$AddressPrimitive {
  const AddressPrimitive._();

  const factory AddressPrimitive({
    @required String address,
    @required String id,
  }) = _AddressPrimitive;

  factory AddressPrimitive.empty() =>
      AddressPrimitive(address: '', id: Uuid().v1());

  // factory AddressPrimitive.fromDomain(Address address) =>
  //     AddressPrimitive(address: address.getValue());

  Address toDomain() => Address(address);
}
