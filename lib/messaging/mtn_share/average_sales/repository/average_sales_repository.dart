import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/messaging/mtn_share/average_sales/model/average_sales_request.dart';
import 'package:superjara/messaging/mtn_share/average_sales/model/average_sales_response.dart';

class AverageSalesRepository {
  AverageSalesRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<AverageSalesResponse>> averageSales(
      AverageSalesRequest averageSalesRequest) async {
    try {
      final response =
          await _restClient.averageSalesRequest(averageSalesRequest);

      return BaseResponse<AverageSalesResponse>(
          status: response.status, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final averageSalesRepositoryProvider = Provider<AverageSalesRepository>(
  (ref) => AverageSalesRepository(
    ref.read(restClientProvider),
  ),
);
