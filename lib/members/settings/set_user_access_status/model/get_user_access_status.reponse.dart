class GetUserAccessStatusResponse {
  final String? serverMessage;
  final bool? status;
  final int? errorCode;
  final List<dynamic>? data;
  final List<dynamic>? dataResult;
  final List<dynamic>? errorData;
  final String? textStatus;
  final dynamic error;

  GetUserAccessStatusResponse({
    this.serverMessage,
    this.status,
    this.errorCode,
    this.data,
    this.dataResult,
    this.errorData,
    this.textStatus,
    this.error,
  });

  factory GetUserAccessStatusResponse.fromJson(Map<String, dynamic> json) =>
      GetUserAccessStatusResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        errorCode: json["error_code"],
        data: json["data"] == null
            ? []
            : List<dynamic>.from(json["data"]!.map((x) => x)),
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
        "error_code": errorCode,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
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
