import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';

import 'package:superjara/home/count_managers/data/model/count_manager_request.dart';
import 'package:superjara/home/count_managers/data/model/count_manager_response.dart';

class CountManagerRepository {
  CountManagerRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<CountManagerResponse>> countManager(
      CountManagerRequest countManagerRequest) async {
    try {
      final response =
          await _restClient.countManagerRequest(countManagerRequest);
      return BaseResponse<CountManagerResponse>(status: true, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final countManagerRepositoryProvider = Provider<CountManagerRepository>(
  (ref) => CountManagerRepository(
    ref.read(restClientProvider),
  ),
);
