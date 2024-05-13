import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class AppException with _$AppException{
  const AppException._();

  @Implements<Exception>()
  @Assert('statusCode is int || statusCode is String')
  const factory AppException.serverException({
    required String message,
    required dynamic statusCode,
  }) = ServerException;

  @Implements<Exception>()
  @Assert('statusCode is int || statusCode is String')
  const factory AppException.cacheException({
    required String message,
    required dynamic statusCode,
  }) = CacheException;
}
