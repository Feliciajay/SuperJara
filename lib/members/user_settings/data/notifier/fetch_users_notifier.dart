import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/members/user_settings/data/model/fetch_users_request.dart';
import 'package:superjara/members/user_settings/data/notifier/fetch_users_state.dart';
import 'package:superjara/members/user_settings/data/repository/fetch_users_repository.dart';

import 'package:superjara/utils/enums.dart';

class FetchUserNotifier extends AutoDisposeNotifier<FetchUserState> {
  FetchUserNotifier();

  late final FetchUserRepository _fetchUserRepository;

  @override
  FetchUserState build() {
    _fetchUserRepository = ref.read(fetchUserRepositoryProvider);
    return FetchUserState.initial();
  }

  Future<void> fetchUser(
      //{
      // required CountMemberRequest data,
      // void Function(String error) onError,
      // void Function()? onSuccess,

      // }
      ) async {
    state = state.copyWith(fetchUsersState: LoadState.loading);

    const data = FetchUserRequest(
      action: 'fetchusers',
      process: 'autobiz_members',
      page: '1',
      limit: '5',
      search: "",
    );
    try {
      final value = await _fetchUserRepository.fetchUser(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        fetchUsersState: LoadState.idle,
        fetchUsersResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(fetchUsersState: LoadState.idle);
    }
  }
}

final fetchUserNotifierProvider =
    NotifierProvider.autoDispose<FetchUserNotifier, FetchUserState>(
  FetchUserNotifier.new,
);
