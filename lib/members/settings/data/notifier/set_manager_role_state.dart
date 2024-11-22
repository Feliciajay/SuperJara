import 'package:superjara/members/settings/data/model/set_manager_role_response.dart';

import 'package:superjara/utils/enums.dart';

class SetManagerRoleState {
  SetManagerRoleState({
    required this.setManagerRoleState,
    required this.setManagerRoleResponse,
  });

  final LoadState setManagerRoleState;
  final SetManagerRoleResponse? setManagerRoleResponse;

  factory SetManagerRoleState.initial() {
    return SetManagerRoleState(
      setManagerRoleState: LoadState.idle,
      setManagerRoleResponse: null,
    );
  }
  SetManagerRoleState copyWith({
    LoadState? setManagerRoleState,
    SetManagerRoleResponse? setManagerRoleResponse,
  }) {
    return SetManagerRoleState(
      setManagerRoleState: setManagerRoleState ?? this.setManagerRoleState,
      setManagerRoleResponse:
          setManagerRoleResponse ?? this.setManagerRoleResponse,
    );
  }
}
