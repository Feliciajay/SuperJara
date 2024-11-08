// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_member_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountNumbersResponse _$CountNumbersResponseFromJson(
        Map<String, dynamic> json) =>
    CountNumbersResponse(
      serverMessage: json['serverMessage'] as String,
      status: json['status'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      dataResult: json['dataResult'] as List<dynamic>,
      errorData: json['errorData'] as List<dynamic>,
      textStatus: json['textStatus'] as String,
      error: json['error'],
    );

Map<String, dynamic> _$CountNumbersResponseToJson(
        CountNumbersResponse instance) =>
    <String, dynamic>{
      'serverMessage': instance.serverMessage,
      'status': instance.status,
      'data': instance.data,
      'dataResult': instance.dataResult,
      'errorData': instance.errorData,
      'textStatus': instance.textStatus,
      'error': instance.error,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      totalMembers: (json['totalMembers'] as num).toInt(),
      totalActive: (json['totalActive'] as num).toInt(),
      totalInactive: (json['totalInactive'] as num).toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'totalMembers': instance.totalMembers,
      'totalActive': instance.totalActive,
      'totalInactive': instance.totalInactive,
    };
