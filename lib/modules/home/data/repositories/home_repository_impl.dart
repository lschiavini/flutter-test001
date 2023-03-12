import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../../../core/constants/api_strings.dart';
import '../../../../core/interfaces/http_interface.dart';
import '../../../../core/model/custom_exception_model.dart';
import '../../domain/model/user_model.dart';
import '../../domain/repositories/home_repository.dart';
import '../mapper/user_response_to_model_mapper.dart';
import '../models/user_response_dto.dart';

class HomeRepositoryImpl implements HomeRepository {
  final IHttp _httpService;

  HomeRepositoryImpl(
    this._httpService,
  );

  @override
  Future<Either<CustomExceptionModel, List<UserModel>>> fetchUsers({
    required int numberOfUsers,
  }) async {
    return await _httpService
        .get(
      ApiStrings.fetchMultipleUsers(
        nUsers: numberOfUsers,
      ),
    )
        .then(
      (
        Response response,
      ) {
        if (response.statusCode == 200) {
          try {
            return Right(
              UserResponseToModelMapper.fromDto(
                UsersResponseDto.fromJson(
                  jsonDecode(
                    response.body,
                  ) as Map<String, dynamic>,
                ),
              ),
            );
          } catch (e) {
            return Left(
              CustomExceptionModel(
                message: e.toString(),
                statusCode: response.statusCode,
              ),
            );
          }
        }

        return Left(
          CustomExceptionModel(
            message: response.body,
            statusCode: response.statusCode,
          ),
        );
      },
    );
  }
}
