import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/messaging/mtn_share/today_sales/model/today_sales_request.dart';
import 'package:superjara/messaging/mtn_share/today_sales/notifier/today_sales_state.dart';
import 'package:superjara/messaging/mtn_share/today_sales/repository/today_sales_repository.dart';

import 'package:superjara/utils/enums.dart';

class TodaySalesNotifier extends AutoDisposeNotifier<TodaySalesState> {
  TodaySalesNotifier();

  late final TodaySalesRepository _todaySalesRepository;

  @override
  TodaySalesState build() {
    _todaySalesRepository = ref.read(todaySalesRepositoryProvider);
    return TodaySalesState.initial();
  }

  Future<void> todaySales(
      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(todaySalesState: LoadState.loading);

    const todaysalesdata = TodaySalesRequest(
      action: 'todaymtnsimsales',
      process: 'autobiz_sims',
    );
    try {
      final value = await _todaySalesRepository.todaySales(todaysalesdata);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        todaySalesState: LoadState.idle,
        todaySalesResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(todaySalesState: LoadState.idle);
    }
  }
}

final todaySalesNotifierProvider =
    NotifierProvider.autoDispose<TodaySalesNotifier, TodaySalesState>(
  TodaySalesNotifier.new,
);
