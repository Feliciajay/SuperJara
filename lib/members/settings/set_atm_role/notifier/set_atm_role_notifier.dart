import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/members/settings/set_atm_role/model/set_atm_role_request.dart';
import 'package:superjara/members/settings/set_atm_role/notifier/set_atm_role_state.dart';
import 'package:superjara/members/settings/set_atm_role/repository/set_atm_role_repository.dart';

import 'package:superjara/utils/enums.dart';

class SetAtmRoleNotifier extends AutoDisposeNotifier<SetAtmRoleState> {
  SetAtmRoleNotifier();

  late final SetAtmRoleRepository _setAtmRoleRepository;

  @override
  SetAtmRoleState build() {
    _setAtmRoleRepository = ref.read(setAtmRoleRepositoryProvider);
    return SetAtmRoleState.initial();
  }

  Future<void> setAtmRole({
    required SetAtmRoleRequest data,
    required void Function(String error) onError,
    required void Function(String message) onSuccess,
  }) async {
    state = state.copyWith(setAtmRoleState: LoadState.loading);

    try {
      final value = await _setAtmRoleRepository.setAtmRole(data);
      if (!value.status == true) throw Exception(value.serverMessage);

      state = state.copyWith(
        setAtmRoleState: LoadState.idle,
        setAtmRoleResponse: value.data,
      );
      onSuccess(value.data!.serverMessage.toString());
    } catch (e) {
      onError(e.toString());
      state = state.copyWith(setAtmRoleState: LoadState.idle);
    }
  }
}

final setAtmRoleNotifierProvider =
    NotifierProvider.autoDispose<SetAtmRoleNotifier, SetAtmRoleState>(
  SetAtmRoleNotifier.new,
);
