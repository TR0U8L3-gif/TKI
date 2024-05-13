import 'package:fpdart/fpdart.dart';
import 'package:tki_app/core/utils/error/failures.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;