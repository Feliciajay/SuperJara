import 'package:superjara/messaging/mtn_share/today_sales/model/today_sales_response.dart';

import 'package:superjara/utils/enums.dart';

class TodaySalesState {
  TodaySalesState({
    required this.todaySalesState,
    required this.todaySalesResponse,
  });

  final LoadState todaySalesState;
  final TodaySalesResponse? todaySalesResponse;

  factory TodaySalesState.initial() {
    return TodaySalesState(
        todaySalesState: LoadState.idle, todaySalesResponse: null);
  }
  TodaySalesState copyWith({
    LoadState? todaySalesState,
    TodaySalesResponse? todaySalesResponse,
  }) {
    return TodaySalesState(
      todaySalesState: todaySalesState ?? this.todaySalesState,
      todaySalesResponse: todaySalesResponse ?? this.todaySalesResponse,
    );
  }
}
