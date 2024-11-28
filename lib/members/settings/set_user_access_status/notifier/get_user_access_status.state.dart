import 'package:superjara/members/settings/set_user_access_status/model/get_user_access_status_reponse.dart';

import 'package:superjara/utils/enums.dart';

class GetUserAccessStatusState {
  GetUserAccessStatusState({
    required this.getUserAccessStatusState,
    required this.getUserAccessStatusResponse,
  });

  final LoadState getUserAccessStatusState;
  final GetUserAccessStatusResponse? getUserAccessStatusResponse;

  factory GetUserAccessStatusState.initial() {
    return GetUserAccessStatusState(
      getUserAccessStatusState: LoadState.idle,
      getUserAccessStatusResponse: null,
    );
  }
  GetUserAccessStatusState copyWith({
    LoadState? getUserAccessStatusState,
    GetUserAccessStatusResponse? getUserAccessStatusResponse,
  }) {
    return GetUserAccessStatusState(
      getUserAccessStatusState:
          getUserAccessStatusState ?? this.getUserAccessStatusState,
      getUserAccessStatusResponse:
          getUserAccessStatusResponse ?? this.getUserAccessStatusResponse,
    );
  }
}
