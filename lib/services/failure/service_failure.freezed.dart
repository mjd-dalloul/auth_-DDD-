// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'service_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ServiceFailureTearOff {
  const _$ServiceFailureTearOff();

// ignore: unused_element
  Canceled canceled() {
    return const Canceled();
  }
}

/// @nodoc
// ignore: unused_element
const $ServiceFailure = _$ServiceFailureTearOff();

/// @nodoc
mixin _$ServiceFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult canceled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult canceled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult canceled(Canceled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult canceled(Canceled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ServiceFailureCopyWith<$Res> {
  factory $ServiceFailureCopyWith(
          ServiceFailure value, $Res Function(ServiceFailure) then) =
      _$ServiceFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceFailureCopyWithImpl<$Res>
    implements $ServiceFailureCopyWith<$Res> {
  _$ServiceFailureCopyWithImpl(this._value, this._then);

  final ServiceFailure _value;
  // ignore: unused_field
  final $Res Function(ServiceFailure) _then;
}

/// @nodoc
abstract class $CanceledCopyWith<$Res> {
  factory $CanceledCopyWith(Canceled value, $Res Function(Canceled) then) =
      _$CanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanceledCopyWithImpl<$Res> extends _$ServiceFailureCopyWithImpl<$Res>
    implements $CanceledCopyWith<$Res> {
  _$CanceledCopyWithImpl(Canceled _value, $Res Function(Canceled) _then)
      : super(_value, (v) => _then(v as Canceled));

  @override
  Canceled get _value => super._value as Canceled;
}

/// @nodoc
class _$Canceled implements Canceled {
  const _$Canceled();

  @override
  String toString() {
    return 'ServiceFailure.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Canceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult canceled(),
  }) {
    assert(canceled != null);
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult canceled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult canceled(Canceled value),
  }) {
    assert(canceled != null);
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult canceled(Canceled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class Canceled implements ServiceFailure {
  const factory Canceled() = _$Canceled;
}
