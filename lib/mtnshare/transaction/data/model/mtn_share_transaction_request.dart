import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mtn_share_transaction_request.g.dart';

@JsonSerializable(createFactory: false)
class MtnShareTransactionRequest implements EquatableMixin {
  const MtnShareTransactionRequest({
    required this.process,
    required this.action,
    required this.page,
    required this.limit,
    required this.search,
    required this.status,
  });

  final String process;
  final String action;
  final int page;
  final int limit;
  final String search;
  final String status;

  Map<String, dynamic> toJson() => _$MtnShareTransactionRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [
        process,
        action,
        page,
        limit,
        search,
      ];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
