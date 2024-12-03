import 'package:superjara/kyc_details/manual_funding_screen/manual_funding_details/model/manual_funding_details_reponse.dart';

import 'package:superjara/utils/enums.dart';

class ManualFundingDetailsState {
  ManualFundingDetailsState({
    required this.manualFundingDetailsState,
    required this.manualFundingDetailsResponse,
  });

  final LoadState manualFundingDetailsState;
  final ManualFundingDetailsResponse? manualFundingDetailsResponse;

  factory ManualFundingDetailsState.initial() {
    return ManualFundingDetailsState(
      manualFundingDetailsState: LoadState.idle,
      manualFundingDetailsResponse: null,
    );
  }
  ManualFundingDetailsState copyWith({
    LoadState? manualFundingDetailsState,
    ManualFundingDetailsResponse? manualFundingDetailsResponse,
  }) {
    return ManualFundingDetailsState(
      manualFundingDetailsState:
          manualFundingDetailsState ?? this.manualFundingDetailsState,
      manualFundingDetailsResponse:
          manualFundingDetailsResponse ?? this.manualFundingDetailsResponse,
    );
  }
}
