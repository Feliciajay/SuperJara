import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/members/change_plan_users/change_user_password/model/change_user_password_request.dart';
import 'package:superjara/members/change_plan_users/change_user_password/notifier/change_user_password_state.dart';
import 'package:superjara/members/change_plan_users/change_user_password/repository/change_user_password_repository.dart';

import 'package:superjara/utils/enums.dart';

class ChangeUserPasswordNotifier
    extends AutoDisposeNotifier<ChangeUserPasswordState> {
  ChangeUserPasswordNotifier();

  late final ChangeUserPasswordRepository _changeUserPasswordRepository;

  @override
  ChangeUserPasswordState build() {
    _changeUserPasswordRepository =
        ref.read(changeUserPasswordRepositoryProvider);
    return ChangeUserPasswordState.initial();
  }

  Future<void> changeUserPassword({
    required int userId,
    required String oldPassword,
    required String newPassword,

    // void Function(String error) onError,
    // void Function()? onSuccess,
  }) async {
    state = state.copyWith(changeUserPasswordState: LoadState.loading);

    final data = ChangeUserPasswordRequest(
      action: 'changeuserpassword',
      process: 'autobiz_members',
      user_id: "$userId",
      old_password: "$oldPassword",
      new_password: "$newPassword",
    );
    try {
      final value =
          await _changeUserPasswordRepository.changeUserPassword(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        changeUserPasswordState: LoadState.idle,
        changeUserPasswordResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(changeUserPasswordState: LoadState.idle);
    }
  }
}

final changeUserPasswordNotifierProvider = NotifierProvider.autoDispose<
    ChangeUserPasswordNotifier, ChangeUserPasswordState>(
  ChangeUserPasswordNotifier.new,
);
