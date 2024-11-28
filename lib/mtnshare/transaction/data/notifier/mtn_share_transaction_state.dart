import 'package:superjara/mtnshare/transaction/data/model/mtn_share_transation_response.dart';

import 'package:superjara/utils/enums.dart';

class MtnShareTransactionState {
  MtnShareTransactionState({
    required this.mtnShareTransactionState,
    required this.mtnShareTransactionResponse,
  });

  final LoadState mtnShareTransactionState;
  final MtnShareTransactionResponse? mtnShareTransactionResponse;

  factory MtnShareTransactionState.initial() {
    return MtnShareTransactionState(
        mtnShareTransactionState: LoadState.idle,
        mtnShareTransactionResponse: null);
  }
  MtnShareTransactionState copyWith({
    LoadState? mtnShareTransactionState,
    MtnShareTransactionResponse? mtnShareTransactionResponse,
  }) {
    return MtnShareTransactionState(
      mtnShareTransactionState:
          mtnShareTransactionState ?? this.mtnShareTransactionState,
      mtnShareTransactionResponse:
          mtnShareTransactionResponse ?? this.mtnShareTransactionResponse,
    );
  }
}
