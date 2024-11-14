import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/core/config/base_response/base_response.dart';
import 'package:superjara/core/config/exception/app_exception.dart';
import 'package:superjara/data/remote_data_source/rest_client.dart';
import 'package:superjara/home/data/model/count_member_request.dart';
import 'package:superjara/home/data/model/count_member_response.dart';

class CountMemberRepository {
  CountMemberRepository(this._restClient);
  final RestClient _restClient;

  Future<BaseResponse<CountMemberResponse>> countMember(
      CountMemberRequest countMemberRequest) async {
    try {
      final response = await _restClient.countMemberRequest(countMemberRequest);

      return BaseResponse<CountMemberResponse>(
          status: response.status, data: response);
    } on DioException catch (e) {
      return AppException.handleError(e);
    }
  }
}

final countMemberRepositoryProvider = Provider<CountMemberRepository>(
  (ref) => CountMemberRepository(
    ref.read(restClientProvider),
  ),
);
