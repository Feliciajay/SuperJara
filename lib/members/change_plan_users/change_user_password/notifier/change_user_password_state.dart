import 'package:superjara/members/change_plan_users/change_user_password/model/change_user_password_response.dart';
import 'package:superjara/utils/enums.dart';

class ChangeUserPasswordState {
  // final bool isLoading;
  // final String? serverMessage;
  // final List<String> errorMessages;
  // final bool status;

  ChangeUserPasswordState({
    required this.changeUserPasswordState,
    required this.changeUserPasswordResponse,
  });

  final LoadState changeUserPasswordState;
  final ChangeUserPasswordResponse? changeUserPasswordResponse;

  factory ChangeUserPasswordState.initial() {
    return ChangeUserPasswordState(
      changeUserPasswordState: LoadState.idle,
      changeUserPasswordResponse: null,
    );
  }
  ChangeUserPasswordState copyWith({
    LoadState? changeUserPasswordState,
    ChangeUserPasswordResponse? changeUserPasswordResponse,
  }) {
    return ChangeUserPasswordState(
      changeUserPasswordState:
          changeUserPasswordState ?? this.changeUserPasswordState,
      changeUserPasswordResponse:
          changeUserPasswordResponse ?? this.changeUserPasswordResponse,
    );
  }
}
