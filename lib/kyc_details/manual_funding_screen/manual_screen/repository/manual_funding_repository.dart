import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_screen/model/manual_funding_request.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_screen/model/manual_funding_response.dart';

class ManualFundingRepository {
  ManualFundingRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<ManualFundingResponse>> manualFunding(
      ManualFundingRequest manualFundingRequest) async {
    try {
      final response =
          await _restClient.manualFundingRequest(manualFundingRequest);

      return BaseResponse<ManualFundingResponse>(
          status: response.status, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final manualFundingRepositoryProvider = Provider<ManualFundingRepository>(
  (ref) => ManualFundingRepository(
    ref.read(restClientProvider),
  ),
);
