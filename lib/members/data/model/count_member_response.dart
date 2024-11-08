import 'package:json_annotation/json_annotation.dart';

part 'count_member_response.g.dart';

@JsonSerializable()
class CountNumbersResponse {
  final String serverMessage;
  final bool status;
  final Data data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  CountNumbersResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory CountNumbersResponse.fromJson(Map<String, dynamic> json) =>
      _$CountNumbersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CountNumbersResponseToJson(this);
}

@JsonSerializable()
class Data {
  final int totalMembers;
  final int totalActive;
  final int totalInactive;

  Data({
    required this.totalMembers,
    required this.totalActive,
    required this.totalInactive,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
