import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/messaging/mtn_share/data/model/total_mtn_sims_request.dart';
import 'package:superjara/messaging/mtn_share/data/notifier/total_mtn_sims_state.dart';
import 'package:superjara/messaging/mtn_share/data/repository/total_mtn_sims_repository.dart';

import 'package:superjara/utils/enums.dart';

class TotalMtnSimsNotifier extends AutoDisposeNotifier<TotalMtnSimsState> {
  TotalMtnSimsNotifier();

  late final TotalMtnSimsRepository _totalMtnSimsRepository;

  @override
  TotalMtnSimsState build() {
    _totalMtnSimsRepository = ref.read(totalMtnSimsRepositoryProvider);
    return TotalMtnSimsState.initial();
  }

  Future<void> totalMtnSims(
      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(totalMtnSimsState: LoadState.loading);

    const data = TotalMtnSimsRequest(
      action: 'countmtnsims',
      process: 'autobiz_sims',
    );
    try {
      final value = await _totalMtnSimsRepository.totalMtnSims(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        totalMtnSimsState: LoadState.idle,
        totalMtnSimsResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(totalMtnSimsState: LoadState.idle);
    }
  }
}

final totalMtnSimsNotifierProvider =
    NotifierProvider.autoDispose<TotalMtnSimsNotifier, TotalMtnSimsState>(
  TotalMtnSimsNotifier.new,
);
