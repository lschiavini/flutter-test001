import '../../../../core/model/custom_exception_model.dart';
import '../../domain/model/user_model.dart';
import 'package:either_dart/src/either.dart';

import '../../domain/repositories/home_repository.dart';
import '../../domain/usecases/fetch_users/fetch_users_params.dart';
import '../../domain/usecases/fetch_users/fetch_users_usecase.dart';

class FetchUsersUseCaseImpl implements FetchUsersUseCase {
  final HomeRepository _homeRepository;

  FetchUsersUseCaseImpl(
    this._homeRepository,
  );

  @override
  Future<Either<CustomExceptionModel, List<UserModel>>> call({
    required FetchUsersParams params,
  }) async {
    return await _homeRepository.fetchUsers(
      numberOfUsers: params.numberOfUsers,
    );
  }
}
