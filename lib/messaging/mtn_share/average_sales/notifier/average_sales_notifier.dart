import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/messaging/mtn_share/average_sales/model/average_sales_request.dart';
import 'package:superjara/messaging/mtn_share/average_sales/notifier/average_sales_state.dart';
import 'package:superjara/messaging/mtn_share/average_sales/repository/average_sales_repository.dart';

import 'package:superjara/utils/enums.dart';

class AverageSalesNotifier extends AutoDisposeNotifier<AverageSalesState> {
  AverageSalesNotifier();

  late final AverageSalesRepository _averageSalesRepository;

  @override
  AverageSalesState build() {
    _averageSalesRepository = ref.read(averageSalesRepositoryProvider);
    return AverageSalesState.initial();
  }

  Future<void> averageSales(
      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(averageSalesState: LoadState.loading);

    const data = AverageSalesRequest(
      action: 'averagemtnsimsales',
      process: 'autobiz_sims',
    );
    try {
      final value = await _averageSalesRepository.averageSales(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        averageSalesState: LoadState.idle,
        averageSalesResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(averageSalesState: LoadState.idle);
    }
  }
}

final averageSalesNotifierProvider =
    NotifierProvider.autoDispose<AverageSalesNotifier, AverageSalesState>(
  AverageSalesNotifier.new,
);
