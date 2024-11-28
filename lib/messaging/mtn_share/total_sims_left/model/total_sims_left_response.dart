// To parse this JSON data, do
//
//     final totalSimsLeftResponse = totalSimsLeftResponseFromJson(jsonString);

import 'dart:convert';

TotalSimsLeftResponse totalSimsLeftResponseFromJson(String str) =>
    TotalSimsLeftResponse.fromJson(json.decode(str));

String totalSimsLeftResponseToJson(TotalSimsLeftResponse data) =>
    json.encode(data.toJson());

class TotalSimsLeftResponse {
  final String serverMessage;
  final bool status;
  final TotalSimsLeftData data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  TotalSimsLeftResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory TotalSimsLeftResponse.fromJson(Map<String, dynamic> json) =>
      TotalSimsLeftResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: TotalSimsLeftData.fromJson(json["data"]),
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

class TotalSimsLeftData {
  final String response;

  TotalSimsLeftData({
    required this.response,
  });

  factory TotalSimsLeftData.fromJson(Map<String, dynamic> json) =>
      TotalSimsLeftData(
        response: json["response"],
      );

  Map<String, dynamic> toJson() => {
        "response": response,
      };
}
