class SetUserAccessStatusResponse {
  final String? serverMessage;
  final bool status;
  final SetUserAccessStatusData? data;
  final List<dynamic>? dataResult;
  final List<dynamic>? errorData;
  final String? textStatus;
  final dynamic error;

  SetUserAccessStatusResponse({
    this.serverMessage,
    required this.status,
    this.data,
    this.dataResult,
    this.errorData,
    this.textStatus,
    this.error,
  });

  factory SetUserAccessStatusResponse.fromJson(Map<String, dynamic> json) =>
      SetUserAccessStatusResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: json["data"] == null
            ? null
            : SetUserAccessStatusData.fromJson(json["data"]),
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

class SetUserAccessStatusData {
  final String? response;

  SetUserAccessStatusData({
    this.response,
  });

  factory SetUserAccessStatusData.fromJson(Map<String, dynamic> json) =>
      SetUserAccessStatusData(
        response: json["response"],
      );

  Map<String, dynamic> toJson() => {
        "response": response,
      };
}
