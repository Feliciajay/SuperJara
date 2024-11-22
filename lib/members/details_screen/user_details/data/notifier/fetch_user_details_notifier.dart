import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/members/details_screen/user_details/data/model/fetch_user_details_request.dart';
import 'package:superjara/members/details_screen/user_details/data/notifier/fetch_user_details_state.dart';
import 'package:superjara/members/details_screen/user_details/data/repository/fetch_user_details_repository.dart';

import 'package:superjara/utils/enums.dart';

class FetchUserDetailsNotifier extends AutoDisposeNotifier<ApiState> {
  FetchUserDetailsNotifier();

  late final FetchUserDetailsRepository _fetchUserDetailsRepository;

  @override
  ApiState build() {
    _fetchUserDetailsRepository = ref.read(fetchUserDetailsRepositoryProvider);
    return ApiState.initial();
  }

  Future<void> fetchUserDetails({
    required int userId,
    // void Function(String error) onError,
    // void Function()? onSuccess,
  }) async {
    state = state.copyWith(fetchUserDetailsState: LoadState.loading);

    final data = FetchUserDetailsRequest(
      action: 'fetchuserdetails',
      process: 'autobiz_members',
      user_id: "$userId",
    );
    try {
      final value = await _fetchUserDetailsRepository.fetchUserDetails(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        fetchUserDetailsState: LoadState.idle,
        fetchUserDetailsResponse: value.data,
      );
      // onSuccess!();
    } catch (e) {
      // onError(e.toString());
      state = state.copyWith(fetchUserDetailsState: LoadState.idle);
    }
  }
}

final fetchUserDetailsNotifierProvider =
    NotifierProvider.autoDispose<FetchUserDetailsNotifier, ApiState>(
  FetchUserDetailsNotifier.new,
);
