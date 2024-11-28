import 'package:superjara/messaging/mtn_share/total_sims_left/model/total_sims_left_response.dart';

import 'package:superjara/utils/enums.dart';

class TotalSimsLeftState {
  TotalSimsLeftState({
    required this.totalSimsLeftState,
    required this.totalSimsLeftResponse,
  });

  final LoadState totalSimsLeftState;
  final TotalSimsLeftResponse? totalSimsLeftResponse;

  factory TotalSimsLeftState.initial() {
    return TotalSimsLeftState(
        totalSimsLeftState: LoadState.idle, totalSimsLeftResponse: null);
  }
  TotalSimsLeftState copyWith({
    LoadState? totalSimsLeftState,
    TotalSimsLeftResponse? totalSimsLeftResponse,
  }) {
    return TotalSimsLeftState(
      totalSimsLeftState: totalSimsLeftState ?? this.totalSimsLeftState,
      totalSimsLeftResponse:
          totalSimsLeftResponse ?? this.totalSimsLeftResponse,
    );
  }
}
