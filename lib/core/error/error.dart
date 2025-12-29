import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverError(String message) = _ServerError;
  const factory Failure.networkError() = _NetworkError;
  const factory Failure.unknownError(String message) = _UnknownError;
}