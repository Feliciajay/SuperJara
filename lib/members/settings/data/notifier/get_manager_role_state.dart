import 'package:superjara/members/settings/data/model/get_manager_role_response.dart';

import 'package:superjara/utils/enums.dart';

class GetManagerRoleState {
  GetManagerRoleState({
    required this.getManagerRoleState,
    required this.getManagerRoleResponse,
  });

  final LoadState getManagerRoleState;
  final GetManagerRoleResponse? getManagerRoleResponse;

  factory GetManagerRoleState.initial() {
    return GetManagerRoleState(
      getManagerRoleState: LoadState.idle,
      getManagerRoleResponse: null,
    );
  }
  GetManagerRoleState copyWith({
    LoadState? getManagerRoleState,
    GetManagerRoleResponse? getManagerRoleResponse,
  }) {
    return GetManagerRoleState(
      getManagerRoleState: getManagerRoleState ?? this.getManagerRoleState,
      getManagerRoleResponse:
          getManagerRoleResponse ?? this.getManagerRoleResponse,
    );
  }
}
