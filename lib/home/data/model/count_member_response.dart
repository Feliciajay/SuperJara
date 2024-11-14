class CountMemberResponse {
  final String serverMessage;
  final bool status;
  final CountMemberData data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  CountMemberResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory CountMemberResponse.fromJson(Map<String, dynamic> json) =>
      CountMemberResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: CountMemberData.fromJson(json["data"]),
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

class CountMemberData {
  final int totalMembers;
  final int totalActive;
  final int totalInactive;

  CountMemberData({
    required this.totalMembers,
    required this.totalActive,
    required this.totalInactive,
  });

  factory CountMemberData.fromJson(Map<String, dynamic> json) =>
      CountMemberData(
        totalMembers: json["total_members"],
        totalActive: json["total_active"],
        totalInactive: json["total_inactive"],
      );

  Map<String, dynamic> toJson() => {
        "total_members": totalMembers,
        "total_active": totalActive,
        "total_inactive": totalInactive,
      };
}
