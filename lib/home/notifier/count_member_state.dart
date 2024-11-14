import 'package:superjara/home/data/model/count_member_response.dart';

import 'package:superjara/utils/enums.dart';

class CountMemberState {
  CountMemberState({
    required this.countMemberState,
    required this.countMemberResponse,
  });

  final LoadState countMemberState;
  final CountMemberResponse? countMemberResponse;

  factory CountMemberState.initial() {
    return CountMemberState(
        countMemberState: LoadState.idle, countMemberResponse: null);
  }
  CountMemberState copyWith({
    LoadState? countMembersState,
    CountMemberResponse? countMemberResponse,
  }) {
    return CountMemberState(
      countMemberState: countMembersState ?? countMemberState,
      countMemberResponse: countMemberResponse ?? this.countMemberResponse,
    );
  }
}
