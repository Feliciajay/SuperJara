import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/home/data/model/count_member_request.dart';
import 'package:superjara/home/notifier/count_member_state.dart';

import 'package:superjara/home/data/repository/count_member_repository.dart';

import 'package:superjara/utils/enums.dart';

class CountMemberNotifier extends AutoDisposeNotifier<CountMemberState> {
  CountMemberNotifier();

  late final CountMemberRepository _countMemberRepository;

  @override
  CountMemberState build() {
    _countMemberRepository = ref.read(countMemberRepositoryProvider);
    return CountMemberState.initial();
  }

  Future<void> countMember(
      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(countMembersState: LoadState.loading);

    const data = CountMemberRequest(
      action: 'countmembers',
      process: 'autobiz_members',
    );
    try {
      final value = await _countMemberRepository.countMember(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        countMembersState: LoadState.idle,
        countMemberResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(countMembersState: LoadState.idle);
    }
  }
}

final countMemberNotifierProvider =
    NotifierProvider.autoDispose<CountMemberNotifier, CountMemberState>(
  CountMemberNotifier.new,
);
