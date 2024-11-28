import 'package:superjara/messaging/mtn_share/data/model/total_mtn_sims_response.dart';

import 'package:superjara/utils/enums.dart';

class TotalMtnSimsState {
  TotalMtnSimsState({
    required this.totalMtnSimsState,
    required this.totalMtnSimsResponse,
  });

  final LoadState totalMtnSimsState;
  final TotalMtnSimsResponse? totalMtnSimsResponse;

  factory TotalMtnSimsState.initial() {
    return TotalMtnSimsState(
        totalMtnSimsState: LoadState.idle, totalMtnSimsResponse: null);
  }
  TotalMtnSimsState copyWith({
    LoadState? totalMtnSimsState,
    TotalMtnSimsResponse? totalMtnSimsResponse,
  }) {
    return TotalMtnSimsState(
      totalMtnSimsState: totalMtnSimsState ?? this.totalMtnSimsState,
      totalMtnSimsResponse: totalMtnSimsResponse ?? this.totalMtnSimsResponse,
    );
  }
}
