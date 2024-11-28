import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/settings/set_atm_role/model/set_atm_role_request.dart';
import 'package:superjara/members/settings/set_atm_role/model/set_atm_role_response.dart';

class SetAtmRoleRepository {
  final RestClient _restClient;

  SetAtmRoleRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<SetAtmRoleResponse>> setAtmRole(
    SetAtmRoleRequest setAtmRoleRequest,
  ) async {
    try {
      // Make the API call
      final response = await _restClient.setAtmRoleRequest(setAtmRoleRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<SetAtmRoleResponse>(
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
final setAtmRoleRepositoryProvider = Provider<SetAtmRoleRepository>(
  (ref) => SetAtmRoleRepository(
    ref.read(restClientProvider),
  ),
);
