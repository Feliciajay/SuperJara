import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/members/settings/set_user_access_status/model/set_user_access_status_request.dart';
import 'package:superjara/members/settings/set_user_access_status/notifier/set_user_access_status.state.dart';
import 'package:superjara/members/settings/set_user_access_status/repository/set_user_access_status.repository.dart';

import 'package:superjara/utils/enums.dart';

class SetUserAccessStatusNotifier
    extends AutoDisposeNotifier<SetUserAccessStatusState> {
  SetUserAccessStatusNotifier();

  late final SetUserAccessStatusRepository _setUserAccessStatusRepository;

  @override
  SetUserAccessStatusState build() {
    _setUserAccessStatusRepository =
        ref.read(setUserAccessStatusRepositoryProvider);
    return SetUserAccessStatusState.initial();
  }

  Future<void> setUserAccessStatus({
    required SetUserAccessStatusRequest data,
    required void Function(String error) onError,
    required void Function(String message) onSuccess,
  }) async {
    state = state.copyWith(setUserAccessStatusState: LoadState.loading);

    try {
      final value =
          await _setUserAccessStatusRepository.setUserAccessStatus(data);
      if (!value.status == true) throw Exception(value.serverMessage);

      state = state.copyWith(
        setUserAccessStatusState: LoadState.idle,
        setUserAccessStatusResponse: value.data,
      );
      onSuccess(value.data!.serverMessage.toString());
    } catch (e) {
      onError(e.toString());
      state = state.copyWith(setUserAccessStatusState: LoadState.idle);
    }
  }
}

final setUserAccessStatusNotifierProvider = NotifierProvider.autoDispose<
    SetUserAccessStatusNotifier, SetUserAccessStatusState>(
  SetUserAccessStatusNotifier.new,
);
