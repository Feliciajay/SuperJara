import 'package:superjara/home/count_managers/data/model/count_manager_response.dart';

import 'package:superjara/utils/enums.dart';

class CountManagerState {
  CountManagerState({
    required this.countManagerState,
    required this.getCountManager,
  });

  final LoadState countManagerState;
  final CountManagerResponse? getCountManager;

  factory CountManagerState.initial() {
    return CountManagerState(
      countManagerState: LoadState.idle,
      getCountManager: null,
    );
  }

  CountManagerState copyWith({
    LoadState? countManagerState,
    CountManagerResponse? getCountManager,
  }) {
    return CountManagerState(
        countManagerState: countManagerState ?? this.countManagerState,
        getCountManager: getCountManager ?? this.getCountManager);
  }
}
