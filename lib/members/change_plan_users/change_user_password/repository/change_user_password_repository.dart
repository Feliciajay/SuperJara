import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/change_plan_users/change_user_password/model/change_user_password_request.dart';
import 'package:superjara/members/change_plan_users/change_user_password/model/change_user_password_response.dart';

class ChangeUserPasswordRepository {
  final RestClient _restClient;

  ChangeUserPasswordRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<ChangeUserPasswordResponse>> changeUserPassword(
    ChangeUserPasswordRequest changeUserPasswordRequest,
  ) async {
    try {
      // Make the API call
      final response = await _restClient
          .changeUserPasswordRequest(changeUserPasswordRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<ChangeUserPasswordResponse>(
        status: response.status,
        data: response,
      );
    } on DioException catch (e) {
      // Convert exceptions to AppException
      throw AppException.handleError(e);
    }
  }
}

/// Provider for the FetchUserDetailsRepository
final changeUserPasswordRepositoryProvider =
    Provider<ChangeUserPasswordRepository>(
  (ref) => ChangeUserPasswordRepository(
    ref.read(restClientProvider),
  ),
);
