import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'count_transaction_request.g.dart';

@JsonSerializable(createFactory: false)
class CountTransactionRequest implements EquatableMixin {
  const CountTransactionRequest({
    required this.process,
    required this.action,
    required this.apiKey,
  });

  final String process;
  final String action;

  @JsonKey(defaultValue: "api_key")
  final String apiKey;

  Map<String, dynamic> toJson() => _$CountTransactionRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [process, action, apiKey];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
