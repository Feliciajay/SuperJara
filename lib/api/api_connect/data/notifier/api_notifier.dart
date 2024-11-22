import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/api/api_connect/data/model/api_request.dart';
import 'package:superjara/api/api_connect/data/notifier/api_state.dart';
import 'package:superjara/api/api_connect/data/repository/api_repository.dart';

import 'package:superjara/utils/enums.dart';

class ApiNotifier extends AutoDisposeNotifier<ApiState> {
  ApiNotifier();

  late final ApiRepository _apiRepository;

  @override
  ApiState build() {
    _apiRepository = ref.read(apiRepositoryProvider);
    return ApiState.initial();
  }

  Future<void> api(

      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(apiState: LoadState.loading);

    const data = ApiRequest(
      action: 'fetchallapi',
      process: 'autobiz_services',
      page: 1,
      limit: 5,
      search: "",
    );
    try {
      final value = await _apiRepository.api(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        apiState: LoadState.idle,
        getApi: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(apiState: LoadState.idle);
    }
  }
}

final apiNotifierProvider = NotifierProvider.autoDispose<ApiNotifier, ApiState>(
  ApiNotifier.new,
);
