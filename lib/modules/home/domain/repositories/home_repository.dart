import 'package:either_dart/either.dart';

import '../../../../core/model/custom_exception_model.dart';
import '../model/user_model.dart';

abstract class HomeRepository {
  Future<Either<CustomExceptionModel, List<UserModel>>> fetchUsers({
    required int numberOfUsers,
  });
}
