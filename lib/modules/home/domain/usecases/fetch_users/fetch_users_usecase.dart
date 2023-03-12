import 'package:either_dart/either.dart';

import '../../../../../core/model/custom_exception_model.dart';
import '../../model/user_model.dart';
import 'fetch_users_params.dart';

abstract class FetchUsersUseCase {
  Future<Either<CustomExceptionModel, List<UserModel>>> call({
    required FetchUsersParams params,
  });
}
