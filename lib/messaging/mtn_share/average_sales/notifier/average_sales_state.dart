import 'package:superjara/messaging/mtn_share/average_sales/model/average_sales_response.dart';

import 'package:superjara/utils/enums.dart';

class AverageSalesState {
  AverageSalesState({
    required this.averageSalesState,
    required this.averageSalesResponse,
  });

  final LoadState averageSalesState;
  final AverageSalesResponse? averageSalesResponse;

  factory AverageSalesState.initial() {
    return AverageSalesState(
        averageSalesState: LoadState.idle, averageSalesResponse: null);
  }
  AverageSalesState copyWith({
    LoadState? averageSalesState,
    AverageSalesResponse? averageSalesResponse,
  }) {
    return AverageSalesState(
      averageSalesState: averageSalesState ?? this.averageSalesState,
      averageSalesResponse: averageSalesResponse ?? this.averageSalesResponse,
    );
  }
}
