import 'package:fpdart/fpdart.dart';
import 'package:tki_app/core/utils/error/failures.dart';

abstract class UseCase<Type,Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {
  NoParams();
  
  @override
  bool operator ==(Object other) {
    return other is NoParams;
  }
  
  @override
  int get hashCode =>  runtimeType.hashCode;
}

