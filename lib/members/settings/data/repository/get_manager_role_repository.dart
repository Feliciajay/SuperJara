import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/settings/data/model/get_manager_role_request.dart';
import 'package:superjara/members/settings/data/model/get_manager_role_response.dart';

class GetManagerRoleRepository {
  final RestClient _restClient;

  GetManagerRoleRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<GetManagerRoleResponse>> getManagerRole(
    GetManagerRoleRequest getManagerRoleRequest,
  ) async {
    try {
      // Make the API call
      final response =
          await _restClient.getManagerRoleRequest(getManagerRoleRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<GetManagerRoleResponse>(
        status: response.status!,
        data: response,
      );
    } on DioException catch (e) {
      // Convert exceptions to AppException
      throw AppException.handleError(e);
    }
  }
}

/// Provider for the FetchUserDetailsRepository
final getManagerRoleRepositoryProvider = Provider<GetManagerRoleRepository>(
  (ref) => GetManagerRoleRepository(
    ref.read(restClientProvider),
  ),
);
