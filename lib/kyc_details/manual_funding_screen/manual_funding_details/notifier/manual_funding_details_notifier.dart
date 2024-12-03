import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_funding_details/model/manual_funding_details_request.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_funding_details/notifier/manual_funding_details_state.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_funding_details/repository/manual_funding_details_repository.dart';

import 'package:superjara/utils/enums.dart';

class ManualFundingDetailsNotifier
    extends AutoDisposeNotifier<ManualFundingDetailsState> {
  ManualFundingDetailsNotifier();

  late final ManualFundingDetailsRepository _manualFundingDetailsRepository;

  @override
  ManualFundingDetailsState build() {
    _manualFundingDetailsRepository =
        ref.read(manualFundingDetailsRepositoryProvider);
    return ManualFundingDetailsState.initial();
  }

  Future<void> manualFundingDetails({
    required int userId,
    // void Function(String error) onError,
    // void Function()? onSuccess,
  }) async {
    state = state.copyWith(manualFundingDetailsState: LoadState.loading);

    final data = ManualFundingDetailsRequest(
      action: 'fetchfundingdetails',
      process: 'autobiz_billings',
      id: "1",
    );
    try {
      final value =
          await _manualFundingDetailsRepository.manualFundingDetails(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        manualFundingDetailsState: LoadState.idle,
        manualFundingDetailsResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(manualFundingDetailsState: LoadState.idle);
    }
  }
}

final manualFundingDetailsNotifierProvider = NotifierProvider.autoDispose<
    ManualFundingDetailsNotifier, ManualFundingDetailsState>(
  ManualFundingDetailsNotifier.new,
);
