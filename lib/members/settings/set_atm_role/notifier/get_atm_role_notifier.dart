import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/members/settings/set_atm_role/model/get_atm_role_request.dart';
import 'package:superjara/members/settings/set_atm_role/notifier/get_atm_role_state.dart';
import 'package:superjara/members/settings/set_atm_role/repository/get_atm_role_repository.dart';

import 'package:superjara/utils/enums.dart';

class GetAtmRoleNotifier extends AutoDisposeNotifier<GetAtmRoleState> {
  GetAtmRoleNotifier();

  late final GetAtmRoleRepository _getAtmRoleRepository;

  @override
  GetAtmRoleState build() {
    _getAtmRoleRepository = ref.read(getAtmRoleRepositoryProvider);
    return GetAtmRoleState.initial();
  }

  Future<void> getAtmRole({
    required String userId,
    // required GetManagerRoleRequest data,
    // required void Function(String error) onError,
    // required void Function(String message) onSuccess,
  }) async {
    state = state.copyWith(getAtmRoleState: LoadState.loading);
    final data = GetAtmRoleRequest(
        process: 'autobiz_members', action: 'getatmstatus', userId: userId);

    try {
      final value = await _getAtmRoleRepository.getAtmRole(data);
      if (!value.status == true) throw Exception(value.serverMessage);

      state = state.copyWith(
        getAtmRoleState: LoadState.idle,
        getAtmRoleResponse: value.data,
      );
      // onSuccess(value.data!.serverMessage.toString());
    } catch (e) {
      //  onError(e.toString());
      state = state.copyWith(getAtmRoleState: LoadState.idle);
    }
  }
}

final getAtmRoleNotifierProvider =
    NotifierProvider.autoDispose<GetAtmRoleNotifier, GetAtmRoleState>(
  GetAtmRoleNotifier.new,
);
