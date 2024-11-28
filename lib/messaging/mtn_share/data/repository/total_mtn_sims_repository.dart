import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/messaging/mtn_share/data/model/total_mtn_sims_request.dart';
import 'package:superjara/messaging/mtn_share/data/model/total_mtn_sims_response.dart';

class TotalMtnSimsRepository {
  TotalMtnSimsRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<TotalMtnSimsResponse>> totalMtnSims(
      TotalMtnSimsRequest totalMtnSimsRequest) async {
    try {
      final response =
          await _restClient.totalMtnSimsRequest(totalMtnSimsRequest);

      return BaseResponse<TotalMtnSimsResponse>(
          status: response.status, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final totalMtnSimsRepositoryProvider = Provider<TotalMtnSimsRepository>(
  (ref) => TotalMtnSimsRepository(
    ref.read(restClientProvider),
  ),
);
