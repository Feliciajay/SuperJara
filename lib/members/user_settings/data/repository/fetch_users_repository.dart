import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/user_settings/data/model/fetch_users_request.dart';
import 'package:superjara/members/user_settings/data/model/fetch_users_response.dart';

class FetchUserRepository {
  FetchUserRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<FetchUsersResponse>> fetchUser(
      FetchUserRequest fetchUserRequest) async {
    try {
      final response = await _restClient.fetchUserRequest(fetchUserRequest);

      return BaseResponse<FetchUsersResponse>(
          status: response.status, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final fetchUserRepositoryProvider = Provider<FetchUserRepository>(
  (ref) => FetchUserRepository(
    ref.read(restClientProvider),
  ),
);
