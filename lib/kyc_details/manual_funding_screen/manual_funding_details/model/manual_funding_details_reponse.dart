class ManualFundingDetailsResponse {
  final String? serverMessage;
  final bool status;
  final ManualData? data;
  final List<dynamic>? dataResult;
  final List<dynamic>? errorData;
  final String? textStatus;
  final dynamic error;

  ManualFundingDetailsResponse({
    this.serverMessage,
    required this.status,
    this.data,
    this.dataResult,
    this.errorData,
    this.textStatus,
    this.error,
  });

  factory ManualFundingDetailsResponse.fromJson(Map<String, dynamic> json) =>
      ManualFundingDetailsResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: json["data"] == null ? null : ManualData.fromJson(json["data"]),
        dataResult: json["data_result"] == null
            ? []
            : List<dynamic>.from(json["data_result"]!.map((x) => x)),
        errorData: json["error_data"] == null
            ? []
            : List<dynamic>.from(json["error_data"]!.map((x) => x)),
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

class ManualData {
  final String? amountSent;
  final String? username;
  final int? userId;
  final String? status;
  final String? accountName;
  final String? bankName;
  final DateTime? dateCreated;
  final DateTime? dateUpdated;

  ManualData({
    this.amountSent,
    this.username,
    this.userId,
    this.status,
    this.accountName,
    this.bankName,
    this.dateCreated,
    this.dateUpdated,
  });

  factory ManualData.fromJson(Map<String, dynamic> json) => ManualData(
        amountSent: json["amount_sent"],
        username: json["username"],
        userId: json["user_id"],
        status: json["status"],
        accountName: json["account_name"],
        bankName: json["bank_name"],
        dateCreated: json["date_created"] == null
            ? null
            : DateTime.parse(json["date_created"]),
        dateUpdated: json["date_updated"] == null
            ? null
            : DateTime.parse(json["date_updated"]),
      );

  Map<String, dynamic> toJson() => {
        "amount_sent": amountSent,
        "username": username,
        "user_id": userId,
        "status": status,
        "account_name": accountName,
        "bank_name": bankName,
        "date_created": dateCreated?.toIso8601String(),
        "date_updated": dateUpdated?.toIso8601String(),
      };
}
