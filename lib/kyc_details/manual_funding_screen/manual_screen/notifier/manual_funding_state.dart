import 'package:superjara/kyc_details/manual_funding_screen/manual_screen/model/manual_funding_response.dart';

import 'package:superjara/utils/enums.dart';

class ManualFundingState {
  ManualFundingState({
    required this.manualFundingState,
    required this.manualFundingResponse,
  });

  final LoadState manualFundingState;
  final ManualFundingResponse? manualFundingResponse;

  factory ManualFundingState.initial() {
    return ManualFundingState(
        manualFundingState: LoadState.idle, manualFundingResponse: null);
  }
  ManualFundingState copyWith({
    LoadState? manualFundingState,
    ManualFundingResponse? manualFundingResponse,
  }) {
    return ManualFundingState(
      manualFundingState: manualFundingState ?? this.manualFundingState,
      manualFundingResponse:
          manualFundingResponse ?? this.manualFundingResponse,
    );
  }
}
