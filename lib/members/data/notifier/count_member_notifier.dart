import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/config/app_constants.dart';
import 'package:superjara/members/data/model/count_member_request.dart';
import 'package:superjara/members/data/notifier/count_member_state.dart';
import 'package:superjara/members/data/repository/count_member_repository.dart';
import 'package:superjara/utils/enums.dart';

class CountMemberNotifier extends AutoDisposeNotifier<CountMemberState> {
  CountMemberNotifier();

  late final CountMemberRepository _countMemberRepository;

  @override
  CountMemberState build() {
    _countMemberRepository = ref.read(countMemberRepositoryProvider);
    return CountMemberState.initial();
  }

  Future<void> countMember({
    // required CountMemberRequest data,
    void Function(String error)? onError,
    void Function()? onSuccess,
  }) async {
    state = state.copyWith(countMemberState: LoadState.loading);
    const apiKey = ApiKey.apiKey;
    const data = CountMemberRequest(
      action: 'countmembers',
      process: 'autobiz_members',
      apiKey: apiKey,
    );
    try {
      final value = await _countMemberRepository.countMember(data);
      if (!value.status == true) throw Exception(value.msg);

      state = state.copyWith(countMemberState: LoadState.idle);
      onSuccess!();
    } catch (e) {
      onError!(e.toString());
      state = state.copyWith(countMemberState: LoadState.idle);
    }
  }
}

final countMemberNotifierProvider =
    NotifierProvider.autoDispose<CountMemberNotifier, CountMemberState>(
  CountMemberNotifier.new,
);
