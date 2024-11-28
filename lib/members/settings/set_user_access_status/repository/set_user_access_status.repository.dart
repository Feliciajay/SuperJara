import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/settings/set_user_access_status/model/set_user_access_status_reponse.dart';
import 'package:superjara/members/settings/set_user_access_status/model/set_user_access_status_request.dart';

class SetUserAccessStatusRepository {
  final RestClient _restClient;

  SetUserAccessStatusRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<SetUserAccessStatusResponse>> setUserAccessStatus(
    SetUserAccessStatusRequest setUserAccessStatusRequest,
  ) async {
    try {
      // Make the API call
      final response = await _restClient
          .setUserAccessStatusRequest(setUserAccessStatusRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<SetUserAccessStatusResponse>(
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
final setUserAccessStatusRepositoryProvider =
    Provider<SetUserAccessStatusRepository>(
  (ref) => SetUserAccessStatusRepository(
    ref.read(restClientProvider),
  ),
);
