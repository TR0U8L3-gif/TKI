import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  @Assert('statusCode is int || statusCode is String')
  const factory Failure.serverFailure({
    required String message,
    required dynamic statusCode,
  }) = ServerFailure;

  @Assert('statusCode is int || statusCode is String')
  const factory Failure.cacheFailure({
    required String message,
    required dynamic statusCode,
  }) = CacheFailure;

  const factory Failure.unknownFailure({
    required String message,
    required dynamic statusCode,
  }) = UnknownFailure;

  static Failure fromException(AppException exception) {
    return exception.when(
      serverException: (message, statusCode) =>
          Failure.serverFailure(message: message, statusCode: statusCode),
      cacheException: (message, statusCode) =>
          Failure.cacheFailure(message: message, statusCode: statusCode),
    );
  }

  String get errorMessage =>
      '$statusCode ${statusCode is String ? '' : 'Error'}: $message';
  
}
