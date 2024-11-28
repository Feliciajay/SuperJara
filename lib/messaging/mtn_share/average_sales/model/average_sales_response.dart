// To parse this JSON data, do
//
//     final averageSalesResponse = averageSalesResponseFromJson(jsonString);

import 'dart:convert';

AverageSalesResponse averageSalesResponseFromJson(String str) =>
    AverageSalesResponse.fromJson(json.decode(str));

String averageSalesResponseToJson(AverageSalesResponse data) =>
    json.encode(data.toJson());

class AverageSalesResponse {
  final String serverMessage;
  final bool status;
  final AverageSalesData data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  AverageSalesResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory AverageSalesResponse.fromJson(Map<String, dynamic> json) =>
      AverageSalesResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: AverageSalesData.fromJson(json["data"]),
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

class AverageSalesData {
  final String response;

  AverageSalesData({
    required this.response,
  });

  factory AverageSalesData.fromJson(Map<String, dynamic> json) =>
      AverageSalesData(
        response: json["response"],
      );

  Map<String, dynamic> toJson() => {
        "response": response,
      };
}
