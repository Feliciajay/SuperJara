import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/model/payment_gateway_request.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/notifier/payment_gateway_state.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/repository/payment_gateway_respository.dart';

import 'package:superjara/utils/enums.dart';

class PaymentGatewayNotifier extends AutoDisposeNotifier<PaymentGatewayState> {
  PaymentGatewayNotifier();

  late final PaymentGatewayRepository _paymentGatewayRepository;

  @override
  PaymentGatewayState build() {
    _paymentGatewayRepository = ref.read(paymentGatewayRepositoryProvider);
    return PaymentGatewayState.initial();
  }

  Future<void> paymentGateway({
    required PaymentGatewayRequest data,
    required void Function(String error) onError,
    required void Function(String message) onSuccess,
  }) async {
    state = state.copyWith(paymentGatewayState: LoadState.loading);

    // final data = PaymentGatewayRequest(
    //   action: 'setpaymentlimit',
    //   process: 'autobiz_members',
    //   user_id: "$userId",
    //   amount: "$amount",
    // );
    try {
      final value = await _paymentGatewayRepository.paymentGateway(data);
      if (!value.status == true) throw Exception(value.data!.serverMessage);

      state = state.copyWith(
        paymentGatewayState: LoadState.idle,
        paymentGatewayResponse: value.data,
      );
      onSuccess(value.data!.serverMessage);
    } catch (e) {
      onError(e.toString());
      state = state.copyWith(paymentGatewayState: LoadState.idle);
    }
  }
}

final paymentGatewayNotifierProvider =
    NotifierProvider.autoDispose<PaymentGatewayNotifier, PaymentGatewayState>(
  PaymentGatewayNotifier.new,
);
