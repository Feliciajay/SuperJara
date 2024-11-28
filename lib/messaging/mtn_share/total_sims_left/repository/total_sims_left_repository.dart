import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/messaging/mtn_share/total_sims_left/model/total_sims_left_request.dart';
import 'package:superjara/messaging/mtn_share/total_sims_left/model/total_sims_left_response.dart';

class TotalSimsLeftRepository {
  TotalSimsLeftRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<TotalSimsLeftResponse>> totalSimsLeft(
      TotalSimsLeftRequest totalSimsLeftRequest) async {
    try {
      final response =
          await _restClient.totalSimsLeftRequest(totalSimsLeftRequest);

      return BaseResponse<TotalSimsLeftResponse>(
          status: response.status, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final totalSimsLeftRepositoryProvider = Provider<TotalSimsLeftRepository>(
  (ref) => TotalSimsLeftRepository(
    ref.read(restClientProvider),
  ),
);
