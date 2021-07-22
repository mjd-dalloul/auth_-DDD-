import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_failure.freezed.dart';

@freezed
abstract class ServiceFailure with _$ServiceFailure {
  const factory ServiceFailure.canceled() = Canceled;
}