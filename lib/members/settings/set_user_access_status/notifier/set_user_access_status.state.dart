import 'package:superjara/members/settings/set_user_access_status/model/set_user_access_status_reponse.dart';

import 'package:superjara/utils/enums.dart';

class SetUserAccessStatusState {
  SetUserAccessStatusState({
    required this.setUserAccessStatusState,
    required this.setUserAccessStatusResponse,
  });

  final LoadState setUserAccessStatusState;
  final SetUserAccessStatusResponse? setUserAccessStatusResponse;

  factory SetUserAccessStatusState.initial() {
    return SetUserAccessStatusState(
      setUserAccessStatusState: LoadState.idle,
      setUserAccessStatusResponse: null,
    );
  }
  SetUserAccessStatusState copyWith({
    LoadState? setUserAccessStatusState,
    SetUserAccessStatusResponse? setUserAccessStatusResponse,
  }) {
    return SetUserAccessStatusState(
      setUserAccessStatusState:
          setUserAccessStatusState ?? this.setUserAccessStatusState,
      setUserAccessStatusResponse:
          setUserAccessStatusResponse ?? this.setUserAccessStatusResponse,
    );
  }
}
