import 'package:superjara/api/api_connect/data/model/api_response.dart';

import 'package:superjara/utils/enums.dart';

class ApiState {
  ApiState({
    required this.apiState,
    required this.getApi,
  });

  final LoadState apiState;
  final ApiResponse? getApi;

  factory ApiState.initial() {
    return ApiState(
      apiState: LoadState.idle,
      getApi: null,
    );
  }
  ApiState copyWith({
    LoadState? apiState,
    ApiResponse? getApi,
  }) {
    return ApiState(
        apiState: apiState ?? this.apiState, getApi: getApi ?? this.getApi);
  }
}
