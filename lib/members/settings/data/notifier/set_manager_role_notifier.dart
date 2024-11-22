import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/members/settings/data/model/set_manager_role_request.dart';
import 'package:superjara/members/settings/data/notifier/set_manager_role_state.dart';
import 'package:superjara/members/settings/data/repository/set_manager_role_repository.dart';

import 'package:superjara/utils/enums.dart';

class SetManagerRoleNotifier extends AutoDisposeNotifier<SetManagerRoleState> {
  SetManagerRoleNotifier();

  late final SetManagerRoleRepository _setManagerRoleRepository;

  @override
  SetManagerRoleState build() {
    _setManagerRoleRepository = ref.read(setManagerRoleRepositoryProvider);
    return SetManagerRoleState.initial();
  }

  Future<void> setManagerRole({
    required SetManagerRoleRequest data,
    required void Function(String error) onError,
    required void Function(String message) onSuccess,
  }) async {
    state = state.copyWith(setManagerRoleState: LoadState.loading);

    try {
      final value = await _setManagerRoleRepository.setManagerRole(data);
      if (!value.status == true) throw Exception(value.serverMessage);

      state = state.copyWith(
        setManagerRoleState: LoadState.idle,
        setManagerRoleResponse: value.data,
      );
      onSuccess(value.data!.serverMessage.toString());
    } catch (e) {
      onError(e.toString());
      state = state.copyWith(setManagerRoleState: LoadState.idle);
    }
  }
}

final setManagerRoleNotifierProvider =
    NotifierProvider.autoDispose<SetManagerRoleNotifier, SetManagerRoleState>(
  SetManagerRoleNotifier.new,
);
