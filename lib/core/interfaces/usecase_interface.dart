import 'package:either_dart/either.dart';

import '../model/custom_exception_model.dart';

abstract class IUseCase<T, P> {
  Future<Either<CustomExceptionModel, T>> call({
    T? params,
  });
}

abstract class ISimpleUseCase<T, P> {
  T call({
    P? params,
  });
}
