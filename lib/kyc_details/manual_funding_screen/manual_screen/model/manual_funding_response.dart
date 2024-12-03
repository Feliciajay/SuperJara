class ManualFundingResponse {
  final String? serverMessage;
  final bool status;
  final ManualFundingData? data;
  final List<dynamic>? dataResult;
  final List<dynamic>? errorData;
  final String? textStatus;
  final dynamic error;

  ManualFundingResponse({
    this.serverMessage,
    required this.status,
    this.data,
    this.dataResult,
    this.errorData,
    this.textStatus,
    this.error,
  });

  factory ManualFundingResponse.fromJson(Map<String, dynamic> json) =>
      ManualFundingResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: json["data"] == null
            ? null
            : ManualFundingData.fromJson(json["data"]),
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

class ManualFundingData {
  final Confirmed? pending;
  final Confirmed? confirmed;
  final Declined? declined;

  ManualFundingData({
    this.pending,
    this.confirmed,
    this.declined,
  });

  factory ManualFundingData.fromJson(Map<String, dynamic> json) =>
      ManualFundingData(
        pending: json["pending"] == null
            ? null
            : Confirmed.fromJson(json["pending"]),
        confirmed: json["confirmed"] == null
            ? null
            : Confirmed.fromJson(json["confirmed"]),
        declined: json["declined"] == null
            ? null
            : Declined.fromJson(json["declined"]),
      );

  Map<String, dynamic> toJson() => {
        "pending": pending?.toJson(),
        "confirmed": confirmed?.toJson(),
        "declined": declined?.toJson(),
      };
}

class Confirmed {
  final List<ConfirmedData>? data;
  final Pagination? pagination;

  Confirmed({
    this.data,
    this.pagination,
  });

  factory Confirmed.fromJson(Map<String, dynamic> json) => Confirmed(
        data: json["data"] == null
            ? []
            : List<ConfirmedData>.from(
                json["data"]!.map((x) => ConfirmedData.fromJson(x))),
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "pagination": pagination?.toJson(),
      };
}

class ConfirmedData {
  final int? id;
  final int? userId;
  final String? username;
  final String? accountName;
  final String? amountSent;
  final String? status;

  ConfirmedData({
    this.id,
    this.userId,
    this.username,
    this.accountName,
    this.amountSent,
    this.status,
  });

  factory ConfirmedData.fromJson(Map<String, dynamic> json) => ConfirmedData(
        id: json["id"],
        userId: json["user_id"],
        username: json["username"],
        accountName: json["account_name"],
        amountSent: json["amount_sent"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "username": username,
        "account_name": accountName,
        "amount_sent": amountSent,
        "status": status,
      };
}

class Pagination {
  final int? totalRecords;
  final int? totalPages;
  final int? currentPage;
  final int? limit;

  Pagination({
    this.totalRecords,
    this.totalPages,
    this.currentPage,
    this.limit,
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

class Declined {
  final List<dynamic>? data;
  final Pagination? pagination;

  Declined({
    this.data,
    this.pagination,
  });

  factory Declined.fromJson(Map<String, dynamic> json) => Declined(
        data: json["data"] == null
            ? []
            : List<dynamic>.from(json["data"]!.map((x) => x)),
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
        "pagination": pagination?.toJson(),
      };
}
