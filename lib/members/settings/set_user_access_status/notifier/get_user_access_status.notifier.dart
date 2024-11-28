import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/members/settings/set_user_access_status/model/get_user_access_status_request.dart';
import 'package:superjara/members/settings/set_user_access_status/notifier/get_user_access_status.state.dart';
import 'package:superjara/members/settings/set_user_access_status/repository/get_user_access_status.repository.dart';

import 'package:superjara/utils/enums.dart';

class GetUserAccessStatusNotifier
    extends AutoDisposeNotifier<GetUserAccessStatusState> {
  GetUserAccessStatusNotifier();

  late final GetUserAccessStatusRepository _getUserAccessStatusRepository;

  @override
  GetUserAccessStatusState build() {
    _getUserAccessStatusRepository =
        ref.read(getUserAccessStatusRepositoryProvider);
    return GetUserAccessStatusState.initial();
  }

  Future<void> getUserAccessStatus({
    required String userId,
    // required GetManagerRoleRequest data,
    // required void Function(String error) onError,
    // required void Function(String message) onSuccess,
  }) async {
    state = state.copyWith(getUserAccessStatusState: LoadState.loading);
    final data = GetUserAccessStatusRequest(
        process: 'autobiz_members', action: 'getaccessstatus', userId: userId);

    try {
      final value =
          await _getUserAccessStatusRepository.getUserAccessStatus(data);
      if (!value.status == true) throw Exception(value.serverMessage);

      state = state.copyWith(
        getUserAccessStatusState: LoadState.idle,
        getUserAccessStatusResponse: value.data,
      );
      // onSuccess(value.data!.serverMessage.toString());
    } catch (e) {
      //  onError(e.toString());
      state = state.copyWith(getUserAccessStatusState: LoadState.idle);
    }
  }
}

final getUserAccessStatusNotifierProvider = NotifierProvider.autoDispose<
    GetUserAccessStatusNotifier, GetUserAccessStatusState>(
  GetUserAccessStatusNotifier.new,
);
