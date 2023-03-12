import '../../domain/model/user_model.dart';
import '../models/user_response_dto.dart';

class UserResponseToModelMapper {
  static List<UserModel> fromDto(
    UsersResponseDto dto,
  ) {
    if (dto.results == null) {
      return <UserModel>[];
    }

    return dto.results!
        .map(
          (Results result) => UserModel(
            firstName: result.name?.first ?? '',
            lastName: result.name?.last ?? '',
            age: result.registered?.age.toString() ?? '',
            phone: result.phone ?? '',
            gender: result.gender ?? '',
          ),
        )
        .toList();
  }
}
