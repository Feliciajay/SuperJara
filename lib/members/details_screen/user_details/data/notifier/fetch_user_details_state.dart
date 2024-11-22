import 'package:superjara/members/details_screen/user_details/data/model/fetch_user_details.response.dart';

import 'package:superjara/utils/enums.dart';

class ApiState {
  ApiState({
    required this.fetchUserDetailsState,
    required this.fetchUserDetailsResponse,
  });

  final LoadState fetchUserDetailsState;
  final FetchUserDetailsResponse? fetchUserDetailsResponse;

  factory ApiState.initial() {
    return ApiState(
      fetchUserDetailsState: LoadState.idle,
      fetchUserDetailsResponse: null,
    );
  }
  ApiState copyWith({
    LoadState? fetchUserDetailsState,
    FetchUserDetailsResponse? fetchUserDetailsResponse,
  }) {
    return ApiState(
      fetchUserDetailsState:
          fetchUserDetailsState ?? this.fetchUserDetailsState,
      fetchUserDetailsResponse:
          fetchUserDetailsResponse ?? this.fetchUserDetailsResponse,
    );
  }
}
