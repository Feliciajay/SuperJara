import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/members/settings/data/model/get_manager_role_request.dart';
import 'package:superjara/members/settings/data/notifier/get_manager_role_state.dart';
import 'package:superjara/members/settings/data/repository/get_manager_role_repository.dart';

import 'package:superjara/utils/enums.dart';

class GetManagerRoleNotifier extends AutoDisposeNotifier<GetManagerRoleState> {
  GetManagerRoleNotifier();

  late final GetManagerRoleRepository _getManagerRoleRepository;

  @override
  GetManagerRoleState build() {
    _getManagerRoleRepository = ref.read(getManagerRoleRepositoryProvider);
    return GetManagerRoleState.initial();
  }

  Future<void> getManagerRole({
    required String userId,
    // required GetManagerRoleRequest data,
    // required void Function(String error) onError,
    // required void Function(String message) onSuccess,
  }) async {
    state = state.copyWith(getManagerRoleState: LoadState.loading);
    final data = GetManagerRoleRequest(
        process: 'autobiz_members', action: 'getmanagerrole', userId: userId);

    try {
      final value = await _getManagerRoleRepository.getManagerRole(data);
      if (!value.status == true) throw Exception(value.serverMessage);

      state = state.copyWith(
        getManagerRoleState: LoadState.idle,
        getManagerRoleResponse: value.data,
      );
      // onSuccess(value.data!.serverMessage.toString());
    } catch (e) {
      //  onError(e.toString());
      state = state.copyWith(getManagerRoleState: LoadState.idle);
    }
  }
}

final getManagerRoleNotifierProvider =
    NotifierProvider.autoDispose<GetManagerRoleNotifier, GetManagerRoleState>(
  GetManagerRoleNotifier.new,
);
