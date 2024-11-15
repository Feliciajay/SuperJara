import 'package:superjara/members/details_screen/user_details/data/model/fetch_user_details.response.dart';

import 'package:superjara/utils/enums.dart';

class FetchUserDetailsState {
  FetchUserDetailsState({
    required this.fetchUserDetailsState,
    required this.fetchUserDetailsResponse,
  });

  final LoadState fetchUserDetailsState;
  final FetchUserDetailsResponse? fetchUserDetailsResponse;

  factory FetchUserDetailsState.initial() {
    return FetchUserDetailsState(
      fetchUserDetailsState: LoadState.idle,
      fetchUserDetailsResponse: null,
    );
  }
  FetchUserDetailsState copyWith({
    LoadState? fetchUserDetailsState,
    FetchUserDetailsResponse? fetchUserDetailsResponse,
  }) {
    return FetchUserDetailsState(
      fetchUserDetailsState:
          fetchUserDetailsState ?? this.fetchUserDetailsState,
      fetchUserDetailsResponse:
          fetchUserDetailsResponse ?? this.fetchUserDetailsResponse,
    );
  }
}
