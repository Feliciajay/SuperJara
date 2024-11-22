import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/settings/data/model/set_manager_role_request.dart';
import 'package:superjara/members/settings/data/model/set_manager_role_response.dart';

class SetManagerRoleRepository {
  final RestClient _restClient;

  SetManagerRoleRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<SetManagerRoleResponse>> setManagerRole(
    SetManagerRoleRequest setManagerRoleRequest,
  ) async {
    try {
      // Make the API call
      final response =
          await _restClient.setManagerRoleRequest(setManagerRoleRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<SetManagerRoleResponse>(
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
final setManagerRoleRepositoryProvider = Provider<SetManagerRoleRepository>(
  (ref) => SetManagerRoleRepository(
    ref.read(restClientProvider),
  ),
);
