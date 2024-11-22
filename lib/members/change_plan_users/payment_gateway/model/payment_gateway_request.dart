import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_gateway_request.g.dart';

@JsonSerializable(createFactory: false)
class PaymentGatewayRequest implements EquatableMixin {
  const PaymentGatewayRequest({
    required this.process,
    required this.action,
    required this.user_id,
    required this.amount,
  });

  final String process;
  final String action;
  final String user_id;
  final String amount;

  Map<String, dynamic> toJson() => _$PaymentGatewayRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [
        process,
        action,
        user_id,
        amount,
      ];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
