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
        fetchUserState: LoadState.idle, fetchUserResponse: null);
  }
  FetchUserState copyWith({
    LoadState? fetchUsersState,
    FetchUsersResponse? fetchUsersResponse,
  }) {
    return FetchUserState(
      fetchUserState: fetchUsersState ?? fetchUserState,
      fetchUserResponse: fetchUserResponse ?? fetchUserResponse,
    );
  }
}
