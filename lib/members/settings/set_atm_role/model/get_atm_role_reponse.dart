class GetAtmRoleResponse {
  final String? serverMessage;
  final bool status;
  final GetAtmRoleData? data;
  final List<dynamic>? dataResult;
  final List<dynamic>? errorData;
  final String? textStatus;
  final dynamic error;

  GetAtmRoleResponse({
    this.serverMessage,
    required this.status,
    this.data,
    this.dataResult,
    this.errorData,
    this.textStatus,
    this.error,
  });

  factory GetAtmRoleResponse.fromJson(Map<String, dynamic> json) =>
      GetAtmRoleResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data:
            json["data"] == null ? null : GetAtmRoleData.fromJson(json["data"]),
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

class GetAtmRoleData {
  final String? response;

  GetAtmRoleData({
    this.response,
  });

  factory GetAtmRoleData.fromJson(Map<String, dynamic> json) => GetAtmRoleData(
        response: json["response"],
      );

  Map<String, dynamic> toJson() => {
        "response": response,
      };
}
