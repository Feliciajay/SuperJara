import 'package:superjara/members/user_settings/data/model/fetch_users_response.dart';

import 'package:superjara/utils/enums.dart';

class FetchUserState {
  FetchUserState({
    required this.fetchUserState,
    required this.fetchUserResponse,
  });

  final LoadState fetchUserState;
  final FetchUsersResponse? fetchUserResponse;

  factory FetchUserState.initial() {
    return FetchUserState(
      fetchUserState: LoadState.idle,
      fetchUserResponse: null,
    );
  }
  FetchUserState copyWith({
    LoadState? fetchUserState,
    FetchUsersResponse? fetchUserResponse,
  }) {
    return FetchUserState(
      fetchUserState: fetchUserState ?? this.fetchUserState,
      fetchUserResponse: fetchUserResponse ?? this.fetchUserResponse,
    );
  }
}
