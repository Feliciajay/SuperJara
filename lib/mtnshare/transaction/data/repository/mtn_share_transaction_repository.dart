import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/mtnshare/transaction/data/model/mtn_share_transaction_request.dart';
import 'package:superjara/mtnshare/transaction/data/model/mtn_share_transation_response.dart';

class MtnShareTransactionRepository {
  MtnShareTransactionRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<MtnShareTransactionResponse>> mtnShareTransaction(
      MtnShareTransactionRequest mtnShareTransactionRequest) async {
    try {
      final response = await _restClient
          .mtnShareTransactionRequest(mtnShareTransactionRequest);

      return BaseResponse<MtnShareTransactionResponse>(
          status: response.status, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final mtnShareTransactionRepositoryProvider =
    Provider<MtnShareTransactionRepository>(
  (ref) => MtnShareTransactionRepository(
    ref.read(restClientProvider),
  ),
);
