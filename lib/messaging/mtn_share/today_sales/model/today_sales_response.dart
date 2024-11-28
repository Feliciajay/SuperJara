class TodaySalesResponse {
  final String serverMessage;
  final bool status;
  final TodaySalesData data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  TodaySalesResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory TodaySalesResponse.fromJson(Map<String, dynamic> json) =>
      TodaySalesResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: TodaySalesData.fromJson(json["data"]),
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

class TodaySalesData {
  final int response;

  TodaySalesData({
    required this.response,
  });

  factory TodaySalesData.fromJson(Map<String, dynamic> json) => TodaySalesData(
        response: json["response"],
      );

  Map<String, dynamic> toJson() => {
        "response": response,
      };
}
