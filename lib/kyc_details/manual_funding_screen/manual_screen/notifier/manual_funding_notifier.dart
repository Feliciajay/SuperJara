import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/kyc_details/manual_funding_screen/manual_screen/model/manual_funding_request.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_screen/notifier/manual_funding_state.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_screen/repository/manual_funding_repository.dart';

import 'package:superjara/utils/enums.dart';

class ManualFundingNotifier extends AutoDisposeNotifier<ManualFundingState> {
  ManualFundingNotifier();

  late final ManualFundingRepository _manualFundingRepository;

  @override
  ManualFundingState build() {
    _manualFundingRepository = ref.read(manualFundingRepositoryProvider);
    return ManualFundingState.initial();
  }

  Future<void> manualFunding(
      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(manualFundingState: LoadState.loading);

    const data = ManualFundingRequest(
      action: 'fetchallmanualfundings',
      process: 'autobiz_billings',
      page: '1',
      limit: '5',
      search: '',
    );
    try {
      final value = await _manualFundingRepository.manualFunding(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        manualFundingState: LoadState.idle,
        manualFundingResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(manualFundingState: LoadState.idle);
    }
  }
}

final manualFundingNotifierProvider =
    NotifierProvider.autoDispose<ManualFundingNotifier, ManualFundingState>(
  ManualFundingNotifier.new,
);
