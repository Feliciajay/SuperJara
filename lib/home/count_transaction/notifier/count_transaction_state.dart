import 'package:superjara/home/count_transaction/model/count_transaction_response.dart';

import 'package:superjara/utils/enums.dart';

class CountTransactionState {
  CountTransactionState({
    required this.countTransactionState,
    required this.getCountTransaction,
  });

  final LoadState countTransactionState;
  final CountTransactionResponse? getCountTransaction;

  factory CountTransactionState.initial() {
    return CountTransactionState(
      countTransactionState: LoadState.idle,
      getCountTransaction: null,
    );
  }

  CountTransactionState copyWith({
    LoadState? countTransactionState,
    CountTransactionResponse? getCountTransaction,
  }) {
    return CountTransactionState(
        countTransactionState:
            countTransactionState ?? this.countTransactionState,
        getCountTransaction: getCountTransaction ?? this.getCountTransaction);
  }
}
