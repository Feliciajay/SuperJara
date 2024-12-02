class ApiResponse {
  final String? serverMessage;
  final bool status;
  final ApiData? data;
  final List<dynamic>? dataResult;
  final List<dynamic>? errorData;
  final String? textStatus;
  final dynamic error;

  ApiResponse({
    this.serverMessage,
    required this.status,
    this.data,
    this.dataResult,
    this.errorData,
    this.textStatus,
    this.error,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: json["data"] == null ? null : ApiData.fromJson(json["data"]),
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

class ApiData {
  final List<Datum>? data;
  final Pagination? pagination;

  ApiData({
    this.data,
    this.pagination,
  });

  factory ApiData.fromJson(Map<String, dynamic> json) => ApiData(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
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

class Datum {
  final String? apiName;
  final String? apiSystemCode;
  final int? apiId;
  final int? userId;
  final int? apiVendorId;

  Datum({
    this.apiName,
    this.apiSystemCode,
    this.apiId,
    this.userId,
    this.apiVendorId,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        apiName: json["api_name"],
        apiSystemCode: json["api_system_code"],
        apiId: json["api_id"],
        userId: json["user_id"],
        apiVendorId: json["api_vendor_id"],
      );

  Map<String, dynamic> toJson() => {
        "api_name": apiName,
        "api_system_code": apiSystemCode,
        "api_id": apiId,
        "user_id": userId,
        "api_vendor_id": apiVendorId,
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
