class ChangeUserPlanResponse {
  final String serverMessage;
  final bool status;
  final int errorCode;
  final List<dynamic> data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  ChangeUserPlanResponse({
    required this.serverMessage,
    required this.status,
    required this.errorCode,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory ChangeUserPlanResponse.fromJson(Map<String, dynamic> json) =>
      ChangeUserPlanResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        errorCode: json["error_code"],
        data: List<dynamic>.from(json["data"].map((x) => x)),
        dataResult: List<dynamic>.from(json["data_result"].map((x) => x)),
        errorData: List<dynamic>.from(json["error_data"].map((x) => x)),
        textStatus: json["text_status"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "server_message": serverMessage,
        "status": status,
        "error_code": errorCode,
        "data": List<dynamic>.from(data.map((x) => x)),
        "data_result": List<dynamic>.from(dataResult.map((x) => x)),
        "error_data": List<dynamic>.from(errorData.map((x) => x)),
        "text_status": textStatus,
        "error": error,
      };
}
