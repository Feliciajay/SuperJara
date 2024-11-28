import 'package:superjara/members/settings/set_atm_role/model/get_atm_role_reponse.dart';

import 'package:superjara/utils/enums.dart';

class GetAtmRoleState {
  GetAtmRoleState({
    required this.getAtmRoleState,
    required this.getAtmRoleResponse,
  });

  final LoadState getAtmRoleState;
  final GetAtmRoleResponse? getAtmRoleResponse;

  factory GetAtmRoleState.initial() {
    return GetAtmRoleState(
      getAtmRoleState: LoadState.idle,
      getAtmRoleResponse: null,
    );
  }
  GetAtmRoleState copyWith({
    LoadState? getAtmRoleState,
    GetAtmRoleResponse? getAtmRoleResponse,
  }) {
    return GetAtmRoleState(
      getAtmRoleState: getAtmRoleState ?? this.getAtmRoleState,
      getAtmRoleResponse: getAtmRoleResponse ?? this.getAtmRoleResponse,
    );
  }
}
