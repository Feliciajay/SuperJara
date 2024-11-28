import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/messaging/mtn_share/total_sims_left/model/total_sims_left_request.dart';
import 'package:superjara/messaging/mtn_share/total_sims_left/notifier/total_sims_left_state.dart';
import 'package:superjara/messaging/mtn_share/total_sims_left/repository/total_sims_left_repository.dart';

import 'package:superjara/utils/enums.dart';

class TotalSimsLeftNotifier extends AutoDisposeNotifier<TotalSimsLeftState> {
  TotalSimsLeftNotifier();

  late final TotalSimsLeftRepository _totalSimsLeftRepository;

  @override
  TotalSimsLeftState build() {
    _totalSimsLeftRepository = ref.read(totalSimsLeftRepositoryProvider);
    return TotalSimsLeftState.initial();
  }

  Future<void> totalSimsLeft(
      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(totalSimsLeftState: LoadState.loading);

    const data = TotalSimsLeftRequest(
      action: 'totalsimsleft',
      process: 'autobiz_sims',
    );
    try {
      final value = await _totalSimsLeftRepository.totalSimsLeft(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        totalSimsLeftState: LoadState.idle,
        totalSimsLeftResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(totalSimsLeftState: LoadState.idle);
    }
  }
}

final totalSimsLeftNotifierProvider =
    NotifierProvider.autoDispose<TotalSimsLeftNotifier, TotalSimsLeftState>(
  TotalSimsLeftNotifier.new,
);
