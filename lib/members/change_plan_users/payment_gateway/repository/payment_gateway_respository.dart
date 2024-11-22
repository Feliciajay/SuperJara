import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/model/payment_gateway_request.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/model/payment_gateway_response.dart';

class PaymentGatewayRepository {
  final RestClient _restClient;

  PaymentGatewayRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<PaymentGatewayResponse>> paymentGateway(
    PaymentGatewayRequest paymentGatewayRequest,
  ) async {
    try {
      // Make the API call
      final response =
          await _restClient.paymentGatewayRequest(paymentGatewayRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<PaymentGatewayResponse>(
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
final paymentGatewayRepositoryProvider = Provider<PaymentGatewayRepository>(
  (ref) => PaymentGatewayRepository(
    ref.read(restClientProvider),
  ),
);
