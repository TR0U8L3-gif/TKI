import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tki_app/core/utils/error/exceptions.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  @Assert('statusCode is int || statusCode is String')
  const factory Failure.serverFailure({
    required String message,
    required String description,
    required dynamic statusCode,
  }) = ServerFailure;

  @Assert('statusCode is int || statusCode is String')
  const factory Failure.cacheFailure({
    required String message,
    required String description,
    required dynamic statusCode,
  }) = CacheFailure;

  @Assert('statusCode is int || statusCode is String')
  const factory Failure.unknownFailure({
    required String message,
    required String description,
    required dynamic statusCode,
  }) = UnknownFailure;

  static Failure fromException(AppException exception) {
    return exception.when(
      serverException: (message, description, statusCode) =>
          Failure.serverFailure(message: message, description: description, statusCode: statusCode, ),
      cacheException: (message, description, statusCode) =>
          Failure.cacheFailure(message: message, description: description, statusCode: statusCode,),
      unknownException: (message, description, statusCode) =>
          Failure.unknownFailure(message: message, description: description, statusCode: statusCode,),
    );
  }

  String get failureMessage =>
      '${statusCode is String ? statusCode : 'Failure[$statusCode]'}: $message';
  
}
