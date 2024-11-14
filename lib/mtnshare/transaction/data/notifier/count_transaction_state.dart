import 'package:superjara/core/network_utils/async_response.dart';

import 'package:superjara/mtnshare/transaction/data/model/count_transaction_response.dart';
import 'package:superjara/utils/enums.dart';

class CountTransactionState {
  CountTransactionState({
    required this.countTransactionState,
    required this.getCountTransaction,
  });

  final LoadState countTransactionState;
  final AsyncResponse<CountTransactionResponse> getCountTransaction;

  factory CountTransactionState.initial() {
    return CountTransactionState(
      countTransactionState: LoadState.idle,
      getCountTransaction: AsyncResponse.loading(),
    );
  }
  CountTransactionState copyWith({
    LoadState? countTransactionsState,
    final AsyncResponse<CountTransactionResponse>? getCountTransaction,
  }) {
    return CountTransactionState(
      countTransactionState: countTransactionsState ?? countTransactionState,
      getCountTransaction: getCountTransaction ?? this.getCountTransaction,
    );
  }
}
