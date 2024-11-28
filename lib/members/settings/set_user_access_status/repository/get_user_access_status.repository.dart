import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/settings/set_user_access_status/model/get_user_access_status_reponse.dart';
import 'package:superjara/members/settings/set_user_access_status/model/get_user_access_status_request.dart';

class GetUserAccessStatusRepository {
  final RestClient _restClient;

  GetUserAccessStatusRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<GetUserAccessStatusResponse>> getUserAccessStatus(
    GetUserAccessStatusRequest getUserAccessStatusRequest,
  ) async {
    try {
      // Make the API call
      final response = await _restClient
          .getUserAccessStatusRequest(getUserAccessStatusRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<GetUserAccessStatusResponse>(
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
final getUserAccessStatusRepositoryProvider =
    Provider<GetUserAccessStatusRepository>(
  (ref) => GetUserAccessStatusRepository(
    ref.read(restClientProvider),
  ),
);
