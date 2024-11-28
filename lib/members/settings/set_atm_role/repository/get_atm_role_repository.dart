import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/settings/set_atm_role/model/get_atm_role_reponse.dart';
import 'package:superjara/members/settings/set_atm_role/model/get_atm_role_request.dart';

class GetAtmRoleRepository {
  final RestClient _restClient;

  GetAtmRoleRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<GetAtmRoleResponse>> getAtmRole(
    GetAtmRoleRequest getAtmRoleRequest,
  ) async {
    try {
      // Make the API call
      final response = await _restClient.getAtmRoleRequest(getAtmRoleRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<GetAtmRoleResponse>(
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
final getAtmRoleRepositoryProvider = Provider<GetAtmRoleRepository>(
  (ref) => GetAtmRoleRepository(
    ref.read(restClientProvider),
  ),
);
