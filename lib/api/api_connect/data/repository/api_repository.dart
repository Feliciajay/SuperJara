import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/api/api_connect/data/model/api_request.dart';
import 'package:superjara/api/api_connect/data/model/api_response.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';

class ApiRepository {
  ApiRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<ApiResponse>> api(ApiRequest apiRequest) async {
    try {
      final response = await _restClient.apiRequest(apiRequest);

      return BaseResponse<ApiResponse>(status: response.status, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final apiRepositoryProvider = Provider<ApiRepository>(
  (ref) => ApiRepository(
    ref.read(restClientProvider),
  ),
);
