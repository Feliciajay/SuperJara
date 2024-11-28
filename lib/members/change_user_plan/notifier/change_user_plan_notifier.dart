import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/members/change_user_plan/model/change_user_plan_request.dart';
import 'package:superjara/members/change_user_plan/notifier/change_user_plan_state.dart';
import 'package:superjara/members/change_user_plan/repository/change_user_plan_repository.dart';

import 'package:superjara/utils/enums.dart';

class ChangeUserPlanNotifier extends AutoDisposeNotifier<ChangeUserPlanState> {
  ChangeUserPlanNotifier();

  late final ChangeUserPlanRepository _changeUserPlanRepository;

  @override
  ChangeUserPlanState build() {
    _changeUserPlanRepository = ref.read(changeUserPlanRepositoryProvider);
    return ChangeUserPlanState.initial();
  }

  Future<void> changeUserPlan({
    required ChangeUserPlanRequest data,
    required void Function(String error) onError,
    required void Function(String message) onSuccess,
  }) async {
    state = state.copyWith(changeUserPlanState: LoadState.loading);

    try {
      final value = await _changeUserPlanRepository.changeUserPlan(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        changeUserPlanState: LoadState.idle,
        changeUserPlanResponse: value.data,
      );
      onSuccess(value.data!.serverMessage);
    } catch (e) {
      onError(e.toString());
      state = state.copyWith(changeUserPlanState: LoadState.idle);
    }
  }
}

final changeUserPlanNotifierProvider =
    NotifierProvider.autoDispose<ChangeUserPlanNotifier, ChangeUserPlanState>(
  ChangeUserPlanNotifier.new,
);
