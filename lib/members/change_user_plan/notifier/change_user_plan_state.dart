import 'package:superjara/members/change_user_plan/model/change_user_plan_response.dart';

import 'package:superjara/utils/enums.dart';

class ChangeUserPlanState {
  ChangeUserPlanState({
    required this.changeUserPlanState,
    required this.changeUserPlanResponse,
  });

  final LoadState changeUserPlanState;
  final ChangeUserPlanResponse? changeUserPlanResponse;

  factory ChangeUserPlanState.initial() {
    return ChangeUserPlanState(
      changeUserPlanState: LoadState.idle,
      changeUserPlanResponse: null,
    );
  }
  ChangeUserPlanState copyWith({
    LoadState? changeUserPlanState,
    ChangeUserPlanResponse? changeUserPlanResponse,
  }) {
    return ChangeUserPlanState(
      changeUserPlanState: changeUserPlanState ?? this.changeUserPlanState,
      changeUserPlanResponse:
          changeUserPlanResponse ?? this.changeUserPlanResponse,
    );
  }
}
