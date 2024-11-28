class MtnShareTransactionResponse {
  final String serverMessage;
  final bool status;
  final MtnShareTransactionData data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  MtnShareTransactionResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory MtnShareTransactionResponse.fromJson(Map<String, dynamic> json) =>
      MtnShareTransactionResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: MtnShareTransactionData.fromJson(json["data"]),
        dataResult: List<dynamic>.from(json["data_result"].map((x) => x)),
        errorData: List<dynamic>.from(json["error_data"].map((x) => x)),
        textStatus: json["text_status"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "server_message": serverMessage,
        "status": status,
        "data": data.toJson(),
        "data_result": List<dynamic>.from(dataResult.map((x) => x)),
        "error_data": List<dynamic>.from(errorData.map((x) => x)),
        "text_status": textStatus,
        "error": error,
      };
}

class MtnShareTransactionData {
  final List<MtnShareTransactionDatum> data;
  final Pagination pagination;

  MtnShareTransactionData({
    required this.data,
    required this.pagination,
  });

  factory MtnShareTransactionData.fromJson(Map<String, dynamic> json) =>
      MtnShareTransactionData(
        data: List<MtnShareTransactionDatum>.from(
            json["data"].map((x) => MtnShareTransactionDatum.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
      };
}

class MtnShareTransactionDatum {
  final int transId;
  final String phone;
  final String status;
  final String simNumber;
  final DateTime dateAdded;

  MtnShareTransactionDatum({
    required this.transId,
    required this.phone,
    required this.status,
    required this.simNumber,
    required this.dateAdded,
  });

  factory MtnShareTransactionDatum.fromJson(Map<String, dynamic> json) =>
      MtnShareTransactionDatum(
        transId: json["trans_id"],
        phone: json["phone"],
        status: json["status"],
        simNumber: json["sim_number"],
        dateAdded: DateTime.parse(json["date_added"]),
      );

  Map<String, dynamic> toJson() => {
        "trans_id": transId,
        "phone": phone,
        "status": status,
        "sim_number": simNumber,
        "date_added": dateAdded.toIso8601String(),
      };
}

class Pagination {
  final int totalRecords;
  final int totalPages;
  final int currentPage;
  final int limit;

  Pagination({
    required this.totalRecords,
    required this.totalPages,
    required this.currentPage,
    required this.limit,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        totalRecords: json["total_records"],
        totalPages: json["total_pages"],
        currentPage: json["current_page"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "total_records": totalRecords,
        "total_pages": totalPages,
        "current_page": currentPage,
        "limit": limit,
      };
}
