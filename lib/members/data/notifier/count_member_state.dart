import 'package:superjara/core/network_utils/async_response.dart';
import 'package:superjara/members/data/model/count_member_response.dart';
import 'package:superjara/utils/enums.dart';

class CountMemberState {
  CountMemberState({
    required this.countMemberState,
    required this.getCountNumbers,
  });

  final LoadState countMemberState;
  final AsyncResponse<CountNumbersResponse> getCountNumbers;

  factory CountMemberState.initial() {
    return CountMemberState(
      countMemberState: LoadState.idle,
      getCountNumbers: AsyncResponse.loading(),
    );
  }
  CountMemberState copyWith({
    LoadState? countMemberState,
    final AsyncResponse<CountNumbersResponse>? getCountNumbers,
  }) {
    return CountMemberState(
      countMemberState: countMemberState ?? this.countMemberState,
      getCountNumbers: getCountNumbers ?? this.getCountNumbers,
    );
  }
}
