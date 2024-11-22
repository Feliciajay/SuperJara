import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/config/app_constants.dart';

import 'package:superjara/home/count_transaction/model/count_transaction_request.dart';
import 'package:superjara/home/count_transaction/notifier/count_transaction_state.dart';
import 'package:superjara/home/count_transaction/repository/count_transaction_repository.dart';

import 'package:superjara/utils/enums.dart';

class CountTransactionNotifier
    extends AutoDisposeNotifier<CountTransactionState> {
  CountTransactionNotifier();

  late final CountTransactionRepository _countTransactionRepository;

  @override
  CountTransactionState build() {
    _countTransactionRepository = ref.read(countTransactionRepositoryProvider);
    return CountTransactionState.initial();
  }

  Future<void> countManager(
      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(countTransactionsState: LoadState.loading);
    const apiKey = ApiKey.apiKey;
    const data = CountTransactionRequest(
      action: 'counttransaction',
      process: 'autobiz_members',
      apiKey: apiKey,
    );
    try {
      final value = await _countTransactionRepository.countTransaction(data);
      if (!value.status == true) throw Exception(value.serverMessage);

      state = state.copyWith(countTransactionsState: LoadState.idle);
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(countTransactionsState: LoadState.idle);
    }
  }
}

final countTransactionNotifierProvider = NotifierProvider.autoDispose<
    CountTransactionNotifier, CountTransactionState>(
  CountTransactionNotifier.new,
);
