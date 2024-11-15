import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';

import 'package:superjara/home/count_transaction/model/count_transaction_request.dart';
import 'package:superjara/home/count_transaction/model/count_transaction_response.dart';

class CountTransactionRepository {
  CountTransactionRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<CountTransactionResponse>> countTransaction(
      CountTransactionRequest countTransactionRequest) async {
    try {
      final response =
          await _restClient.countTransactionRequest(countTransactionRequest);
      return BaseResponse<CountTransactionResponse>(
          status: true, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final countTransactionRepositoryProvider = Provider<CountTransactionRepository>(
  (ref) => CountTransactionRepository(
    ref.read(restClientProvider),
  ),
);
