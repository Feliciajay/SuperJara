import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/home/count_managers/data/model/count_manager_request.dart';
import 'package:superjara/home/count_managers/data/notifier/count_manager_state.dart';
import 'package:superjara/home/count_managers/data/repository/count_manager_repository.dart';

import 'package:superjara/utils/enums.dart';

class CountManagerNotifier extends AutoDisposeNotifier<CountManagerState> {
  CountManagerNotifier();

  late final CountManagerRepository _countManagerRepository;

  @override
  CountManagerState build() {
    _countManagerRepository = ref.read(countManagerRepositoryProvider);
    return CountManagerState.initial();
  }

  Future<void> countManager(
      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(countManagerState: LoadState.loading);

    const data = CountManagerRequest(
      action: 'countmanagers',
      process: 'autobiz_members',
    );
    try {
      final value = await _countManagerRepository.countManager(data);
      if (!value.status == true) throw Exception(value.data?.serverMessage);

      state = state.copyWith(
        countManagerState: LoadState.idle,
        getCountManager: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(countManagerState: LoadState.idle);
    }
  }
}

final countManagerNotifierProvider =
    NotifierProvider.autoDispose<CountManagerNotifier, CountManagerState>(
  CountManagerNotifier.new,
);
