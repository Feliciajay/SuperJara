// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:superjara/mtnshare/transaction/data/model/mtn_share_transaction_request.dart';
// import 'package:superjara/mtnshare/transaction/data/notifier/mtn_share_transaction_state.dart';
// import 'package:superjara/mtnshare/transaction/data/repository/mtn_share_transaction_repository.dart';

// import 'package:superjara/utils/enums.dart';

// class MtnShareTransactionNotifier
//     extends AutoDisposeNotifier<MtnShareTransactionState> {
//   MtnShareTransactionNotifier();

//   late final MtnShareTransactionRepository _mtnShareTransactionRepository;

//   @override
//   MtnShareTransactionState build() {
//     _mtnShareTransactionRepository =
//         ref.read(mtnShareTransactionRepositoryProvider);
//     return MtnShareTransactionState.initial();
//   }

//   Future<void> mtnShareTransaction(
//       //{
//       // required CountMemberRequest data,
//       // void Function(String error) onError,
//       // void Function()? onSuccess,

//       // }
//       ) async {
//     state = state.copyWith(mtnShareTransactionState: LoadState.loading);

//     const data = MtnShareTransactionRequest(
//       action: 'fetchsimtransactionhistory',
//       process: 'autobiz_members',
//       page: 1,
//       limit: 5,
//       search: "",
//       status: "",
//     );
//     try {
//       final value =
//           await _mtnShareTransactionRepository.mtnShareTransaction(data);
//       if (!value.status == true) throw Exception(value.data!.serverMessage);

//       state = state.copyWith(
//         mtnShareTransactionState: LoadState.idle,
//         mtnShareTransactionResponse: value.data,
//       );
//       // onSuccess!();
//     } catch (e) {
//       // onError(e.toString());
//       state = state.copyWith(mtnShareTransactionState: LoadState.idle);
//     }
//   }
// }

// final mtnShareTransactionNotifierProvider = NotifierProvider.autoDispose<
//     MtnShareTransactionNotifier, MtnShareTransactionState>(
//   MtnShareTransactionNotifier.new,
// );

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/mtnshare/transaction/data/model/mtn_share_transaction_request.dart';
import 'package:superjara/mtnshare/transaction/data/notifier/mtn_share_transaction_state.dart';
import 'package:superjara/mtnshare/transaction/data/repository/mtn_share_transaction_repository.dart';

import 'package:superjara/utils/enums.dart';

class MtnShareTransactionNotifier
    extends AutoDisposeNotifier<MtnShareTransactionState> {
  MtnShareTransactionNotifier();

  late final MtnShareTransactionRepository _mtnShareTransactionRepository;

  @override
  MtnShareTransactionState build() {
    _mtnShareTransactionRepository =
        ref.read(mtnShareTransactionRepositoryProvider);
    return MtnShareTransactionState.initial();
  }

  Future<void> mtnShareTransaction(
      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(mtnShareTransactionState: LoadState.loading);

    const todaysalesdata = MtnShareTransactionRequest(
      action: 'fetchallmtnsimtransactionhistory',
      process: 'autobiz_sims',
      page: 1,
      limit: 3,
      search: '',
      status: '',
    );
    try {
      final value = await _mtnShareTransactionRepository
          .mtnShareTransaction(todaysalesdata);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        mtnShareTransactionState: LoadState.idle,
        mtnShareTransactionResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(mtnShareTransactionState: LoadState.idle);
    }
  }
}

final mtnShareTransactionNotifierProvider = NotifierProvider.autoDispose<
    MtnShareTransactionNotifier, MtnShareTransactionState>(
  MtnShareTransactionNotifier.new,
);
