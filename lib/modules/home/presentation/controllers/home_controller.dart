import 'dart:async';

import 'package:either_dart/either.dart';

import '../../../../core/model/custom_exception_model.dart';
import '../../../../core/utils/report_error.dart';
import '../../domain/model/user_model.dart';
import '../../domain/usecases/fetch_users/fetch_users_params.dart';
import '../../domain/usecases/fetch_users/fetch_users_usecase.dart';
import '../states/home_page_state.dart';

class HomeController {
  final HomePageState _state = HomePageState();

  final FetchUsersUseCase _fetchUsersUseCase;

  HomeController(
    this._fetchUsersUseCase,
  );

  HomePageState get state => _state;

  void init() {
    _state.users = StreamController<List<UserModel>>.broadcast();
  }

  void dispose() {
    _state.users.close();
  }

  void fetchUsers({
    required int numOfUsers,
  }) async {
    _state.users.sink.add(
      <UserModel>[],
    );
    await _fetchUsersUseCase(
      params: FetchUsersParams(
        numberOfUsers: numOfUsers,
      ),
    ).then(
      (
        Either<CustomExceptionModel, List<UserModel>> either,
      ) {
        either.fold(
          (
            CustomExceptionModel exception,
          ) {
            _state.users.sink.addError(
              'This was expected, use it as a challenge and try to fix it, click here again to fetch users, eventually it will work',
            );

            /*
              * This exception is expected
              * sometimes the api returns a string and other times it returns an int
              * feel free to fix it as a challenge
             */
            reportError(
              message:
                  'Ooooops something just happened, jk this exception is expected => use it as a challenge and try to fix it ${exception.message}',
              stack: StackTrace.current,
              library:
                  'lib/modules/home/presentation/controllers/home_controller.dart',
            );
          },
          (
            List<UserModel> users,
          ) {
            _state.users.sink.add(
              users,
            );
          },
        );
      },
    );
  }
}
