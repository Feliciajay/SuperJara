class CountManagerResponse {
  final String serverMessage;
  final bool status;
  final Data data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  CountManagerResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory CountManagerResponse.fromJson(Map<String, dynamic> json) =>
      CountManagerResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: Data.fromJson(json["data"]),
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

class Data {
  final int totalManagers;
  final int totalActive;
  final int totalInactive;

  Data({
    required this.totalManagers,
    required this.totalActive,
    required this.totalInactive,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalManagers: json["total_managers"],
        totalActive: json["total_active"],
        totalInactive: json["total_inactive"],
      );

  Map<String, dynamic> toJson() => {
        "total_managers": totalManagers,
        "total_active": totalActive,
        "total_inactive": totalInactive,
      };
}
