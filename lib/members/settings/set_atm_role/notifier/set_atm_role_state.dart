import 'package:superjara/members/settings/set_atm_role/model/set_atm_role_response.dart';

import 'package:superjara/utils/enums.dart';

class SetAtmRoleState {
  SetAtmRoleState({
    required this.setAtmRoleState,
    required this.setAtmRoleResponse,
  });

  final LoadState setAtmRoleState;
  final SetAtmRoleResponse? setAtmRoleResponse;

  factory SetAtmRoleState.initial() {
    return SetAtmRoleState(
      setAtmRoleState: LoadState.idle,
      setAtmRoleResponse: null,
    );
  }
  SetAtmRoleState copyWith({
    LoadState? setAtmRoleState,
    SetAtmRoleResponse? setAtmRoleResponse,
  }) {
    return SetAtmRoleState(
      setAtmRoleState: setAtmRoleState ?? this.setAtmRoleState,
      setAtmRoleResponse: setAtmRoleResponse ?? this.setAtmRoleResponse,
    );
  }
}
