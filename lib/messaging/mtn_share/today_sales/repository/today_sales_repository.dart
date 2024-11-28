import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/messaging/mtn_share/today_sales/model/today_sales_request.dart';
import 'package:superjara/messaging/mtn_share/today_sales/model/today_sales_response.dart';

class TodaySalesRepository {
  TodaySalesRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<TodaySalesResponse>> todaySales(
      TodaySalesRequest todaySalesRequest) async {
    try {
      final response = await _restClient.todaySalesRequest(todaySalesRequest);

      return BaseResponse<TodaySalesResponse>(
          status: response.status, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final todaySalesRepositoryProvider = Provider<TodaySalesRepository>(
  (ref) => TodaySalesRepository(
    ref.read(restClientProvider),
  ),
);
