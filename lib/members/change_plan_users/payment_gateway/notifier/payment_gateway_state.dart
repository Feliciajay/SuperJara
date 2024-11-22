import 'package:superjara/members/change_plan_users/payment_gateway/model/payment_gateway_response.dart';
import 'package:superjara/utils/enums.dart';

class PaymentGatewayState {
  PaymentGatewayState({
    required this.paymentGatewayState,
    required this.paymentGatewayResponse,
  });

  final LoadState paymentGatewayState;
  final PaymentGatewayResponse? paymentGatewayResponse;

  factory PaymentGatewayState.initial() {
    return PaymentGatewayState(
      paymentGatewayState: LoadState.idle,
      paymentGatewayResponse: null,
    );
  }
  PaymentGatewayState copyWith({
    LoadState? paymentGatewayState,
    PaymentGatewayResponse? paymentGatewayResponse,
  }) {
    return PaymentGatewayState(
      paymentGatewayState: paymentGatewayState ?? this.paymentGatewayState,
      paymentGatewayResponse:
          paymentGatewayResponse ?? this.paymentGatewayResponse,
    );
  }
}
