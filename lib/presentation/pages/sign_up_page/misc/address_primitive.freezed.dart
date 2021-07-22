// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'address_primitive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddressPrimitiveTearOff {
  const _$AddressPrimitiveTearOff();

// ignore: unused_element
  _AddressPrimitive call({@required String address, @required String id}) {
    return _AddressPrimitive(
      address: address,
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddressPrimitive = _$AddressPrimitiveTearOff();

/// @nodoc
mixin _$AddressPrimitive {
  String get address;
  String get id;

  @JsonKey(ignore: true)
  $AddressPrimitiveCopyWith<AddressPrimitive> get copyWith;
}

/// @nodoc
abstract class $AddressPrimitiveCopyWith<$Res> {
  factory $AddressPrimitiveCopyWith(
          AddressPrimitive value, $Res Function(AddressPrimitive) then) =
      _$AddressPrimitiveCopyWithImpl<$Res>;
  $Res call({String address, String id});
}

/// @nodoc
class _$AddressPrimitiveCopyWithImpl<$Res>
    implements $AddressPrimitiveCopyWith<$Res> {
  _$AddressPrimitiveCopyWithImpl(this._value, this._then);

  final AddressPrimitive _value;
  // ignore: unused_field
  final $Res Function(AddressPrimitive) _then;

  @override
  $Res call({
    Object address = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed ? _value.address : address as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$AddressPrimitiveCopyWith<$Res>
    implements $AddressPrimitiveCopyWith<$Res> {
  factory _$AddressPrimitiveCopyWith(
          _AddressPrimitive value, $Res Function(_AddressPrimitive) then) =
      __$AddressPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({String address, String id});
}

/// @nodoc
class __$AddressPrimitiveCopyWithImpl<$Res>
    extends _$AddressPrimitiveCopyWithImpl<$Res>
    implements _$AddressPrimitiveCopyWith<$Res> {
  __$AddressPrimitiveCopyWithImpl(
      _AddressPrimitive _value, $Res Function(_AddressPrimitive) _then)
      : super(_value, (v) => _then(v as _AddressPrimitive));

  @override
  _AddressPrimitive get _value => super._value as _AddressPrimitive;

  @override
  $Res call({
    Object address = freezed,
    Object id = freezed,
  }) {
    return _then(_AddressPrimitive(
      address: address == freezed ? _value.address : address as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$_AddressPrimitive extends _AddressPrimitive {
  const _$_AddressPrimitive({@required this.address, @required this.id})
      : assert(address != null),
        assert(id != null),
        super._();

  @override
  final String address;
  @override
  final String id;

  @override
  String toString() {
    return 'AddressPrimitive(address: $address, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressPrimitive &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$AddressPrimitiveCopyWith<_AddressPrimitive> get copyWith =>
      __$AddressPrimitiveCopyWithImpl<_AddressPrimitive>(this, _$identity);
}

abstract class _AddressPrimitive extends AddressPrimitive {
  const _AddressPrimitive._() : super._();
  const factory _AddressPrimitive(
      {@required String address, @required String id}) = _$_AddressPrimitive;

  @override
  String get address;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$AddressPrimitiveCopyWith<_AddressPrimitive> get copyWith;
}
