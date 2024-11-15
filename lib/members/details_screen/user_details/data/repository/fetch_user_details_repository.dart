import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/details_screen/user_details/data/model/fetch_user_details.response.dart';
import 'package:superjara/members/details_screen/user_details/data/model/fetch_user_details_request.dart';

class FetchUserDetailsRepository {
  final RestClient _restClient;

  FetchUserDetailsRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<FetchUserDetailsResponse>> fetchUserDetails(
    FetchUserDetailsRequest fetchUserDetailsRequest,
  ) async {
    try {
      // Make the API call
      final response =
          await _restClient.fetchUserDetailsRequest(fetchUserDetailsRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<FetchUserDetailsResponse>(
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
final fetchUserDetailsRepositoryProvider = Provider<FetchUserDetailsRepository>(
  (ref) => FetchUserDetailsRepository(
    ref.read(restClientProvider),
  ),
);
