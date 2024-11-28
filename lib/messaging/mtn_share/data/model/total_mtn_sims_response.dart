class TotalMtnSimsResponse {
  final String serverMessage;
  final bool status;
  final TotalMtnSimsData data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  TotalMtnSimsResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory TotalMtnSimsResponse.fromJson(Map<String, dynamic> json) =>
      TotalMtnSimsResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: TotalMtnSimsData.fromJson(json["data"]),
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

class TotalMtnSimsData {
  final String response;

  TotalMtnSimsData({
    required this.response,
  });

  factory TotalMtnSimsData.fromJson(Map<String, dynamic> json) =>
      TotalMtnSimsData(
        response: json["response"],
      );

  Map<String, dynamic> toJson() => {
        "response": response,
      };
}
