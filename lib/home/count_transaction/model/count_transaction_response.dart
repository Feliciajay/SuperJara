class CountTransactionResponse {
  final String? serverMessage;
  final bool? status;
  final countTransactionData? data;
  final List<dynamic>? dataResult;
  final List<dynamic>? errorData;
  final String? textStatus;
  final dynamic error;

  CountTransactionResponse({
    this.serverMessage,
    this.status,
    required this.data,
    this.dataResult,
    this.errorData,
    this.textStatus,
    this.error,
  });

  factory CountTransactionResponse.fromJson(Map<String, dynamic> json) =>
      CountTransactionResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: countTransactionData.fromJson(json["data"]),
        dataResult: List<dynamic>.from(json["data_result"].map((x) => x)),
        errorData: List<dynamic>.from(json["error_data"].map((x) => x)),
        textStatus: json["text_status"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "server_message": serverMessage,
        "status": status,
        "data": data?.toJson(),
        "data_result": dataResult == null
            ? []
            : List<dynamic>.from(dataResult!.map((x) => x)),
        "error_data": errorData == null
            ? []
            : List<dynamic>.from(errorData!.map((x) => x)),
        "text_status": textStatus,
        "error": error,
      };
}

class countTransactionData {
  final int? totalTransactions;
  final int? totalCompletedTransaction;
  final int? totalUncompletedTransaction;
  final int? totalPendingTransaction;

  countTransactionData({
    this.totalTransactions,
    this.totalCompletedTransaction,
    this.totalUncompletedTransaction,
    this.totalPendingTransaction,
  });

  factory countTransactionData.fromJson(Map<String, dynamic> json) =>
      countTransactionData(
        totalTransactions: json["total_transactions"],
        totalCompletedTransaction: json["total_completed_transaction"],
        totalUncompletedTransaction: json["total_uncompleted_transaction"],
        totalPendingTransaction: json["total_pending_transaction"],
      );

  Map<String, dynamic> toJson() => {
        "total_transactions": totalTransactions,
        "total_completed_transaction": totalCompletedTransaction,
        "total_uncompleted_transaction": totalUncompletedTransaction,
        "total_pending_transaction": totalPendingTransaction,
      };
}
