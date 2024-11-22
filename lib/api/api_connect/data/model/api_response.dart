class ApiResponse {
  final String serverMessage;
  final bool status;
  final ApiData data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  ApiResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: ApiData.fromJson(json["data"]),
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

class ApiData {
  final List<ApiDatum> data;
  final Pagination pagination;

  ApiData({
    required this.data,
    required this.pagination,
  });

  factory ApiData.fromJson(Map<String, dynamic> json) => ApiData(
        data:
            List<ApiDatum>.from(json["data"].map((x) => ApiDatum.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
      };
}

class ApiDatum {
  final String apiName;
  final String apiSystemCode;
  final int apiId;
  final int? userId;
  final int apiVendorId;

  ApiDatum({
    required this.apiName,
    required this.apiSystemCode,
    required this.apiId,
    required this.userId,
    required this.apiVendorId,
  });

  factory ApiDatum.fromJson(Map<String, dynamic> json) => ApiDatum(
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
