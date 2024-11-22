class ChangeUserPasswordResponse {
  final String serverMessage;
  final bool status;
  final ChangeUserPasswordData data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  ChangeUserPasswordResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory ChangeUserPasswordResponse.fromJson(Map<String, dynamic> json) =>
      ChangeUserPasswordResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: ChangeUserPasswordData.fromJson(json["data"]),
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

class ChangeUserPasswordData {
  final Response response;

  ChangeUserPasswordData({
    required this.response,
  });

  factory ChangeUserPasswordData.fromJson(Map<String, dynamic> json) =>
      ChangeUserPasswordData(
        response: Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "response": response.toJson(),
      };
}

class Response {
  final List<String> error;

  Response({
    required this.error,
  });

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        error: List<String>.from(json["error"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "error": List<dynamic>.from(error.map((x) => x)),
      };
}
