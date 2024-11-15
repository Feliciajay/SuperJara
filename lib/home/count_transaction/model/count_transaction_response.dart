import 'package:json_annotation/json_annotation.dart';

part 'count_transaction_response.g.dart';

@JsonSerializable()
class CountTransactionResponse {
  final String serverMessage;
  final bool status;
  final CountTransactionData data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  CountTransactionResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory CountTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$CountTransactionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CountTransactionResponseToJson(this);
}

@JsonSerializable()
class CountTransactionData {
  final int totalTransactions;
  final int totalCompletedTransaction;
  final int totalUncompletedTransaction;
  final int totalPendingTransaction;

  CountTransactionData({
    required this.totalTransactions,
    required this.totalCompletedTransaction,
    required this.totalUncompletedTransaction,
    required this.totalPendingTransaction,
  });

  factory CountTransactionData.fromJson(Map<String, dynamic> json) =>
      _$CountTransactionDataFromJson(json);

  Map<String, dynamic> toJson() => _$CountTransactionDataToJson(this);
}
