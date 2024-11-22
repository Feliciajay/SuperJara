import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/members/change_user_plan/model/change_user_plan_request.dart';
import 'package:superjara/members/change_user_plan/model/change_user_plan_response.dart';

class ChangeUserPlanRepository {
  final RestClient _restClient;

  ChangeUserPlanRepository(this._restClient);

  /// Fetch user details from the API
  Future<BaseResponse<ChangeUserPlanResponse>> changeUserPlan(
    ChangeUserPlanRequest changeUserPlanRequest,
  ) async {
    try {
      // Make the API call
      final response =
          await _restClient.changeUserPlanRequest(changeUserPlanRequest);

      // Wrap the response in a BaseResponse
      return BaseResponse<ChangeUserPlanResponse>(
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
final changeUserPlanRepositoryProvider = Provider<ChangeUserPlanRepository>(
  (ref) => ChangeUserPlanRepository(
    ref.read(restClientProvider),
  ),
);
