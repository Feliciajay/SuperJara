import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_funding_details/model/manual_funding_details_reponse.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_funding_details/model/manual_funding_details_request.dart';

class ManualFundingDetailsRepository {
  final RestClient _restClient;

  ManualFundingDetailsRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<ManualFundingDetailsResponse>> manualFundingDetails(
    ManualFundingDetailsRequest manualFundingDetailsRequest,
  ) async {
    try {
      // Make the API call
      final response = await _restClient
          .manualFundingDetailsRequest(manualFundingDetailsRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<ManualFundingDetailsResponse>(
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
final manualFundingDetailsRepositoryProvider =
    Provider<ManualFundingDetailsRepository>(
  (ref) => ManualFundingDetailsRepository(
    ref.read(restClientProvider),
  ),
);
