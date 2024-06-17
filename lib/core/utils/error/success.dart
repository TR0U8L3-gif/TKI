import 'package:freezed_annotation/freezed_annotation.dart';

part 'success.freezed.dart';

@freezed
class Success with _$Success {

  const Success._();

  @Assert('statusCode is int || statusCode is String')
  const factory Success.serverSuccess({
    required String message,
    required String description,
    required dynamic statusCode,
  }) = ServerSuccess;

  @Assert('statusCode is int || statusCode is String')
  const factory Success.cacheSuccess({
    required String message,
    required String description,
    required dynamic statusCode,
  }) = CacheSuccess;

  @Assert('statusCode is int || statusCode is String')
  const factory Success.unknownSuccess({
    required String message,
    required String description,
    required dynamic statusCode,
  }) = UnknownSuccess;

  String get successMessage =>
      '${statusCode is String ? statusCode : 'Success[$statusCode]'}: $message';
  
}
