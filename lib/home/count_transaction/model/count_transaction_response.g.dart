// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountTransactionResponse _$CountTransactionResponseFromJson(
        Map<String, dynamic> json) =>
    CountTransactionResponse(
      serverMessage: json['serverMessage'] as String,
      status: json['status'] as bool,
      data: CountTransactionData.fromJson(json['data'] as Map<String, dynamic>),
      dataResult: json['dataResult'] as List<dynamic>,
      errorData: json['errorData'] as List<dynamic>,
      textStatus: json['textStatus'] as String,
      error: json['error'],
    );

Map<String, dynamic> _$CountTransactionResponseToJson(
        CountTransactionResponse instance) =>
    <String, dynamic>{
      'serverMessage': instance.serverMessage,
      'status': instance.status,
      'data': instance.data,
      'dataResult': instance.dataResult,
      'errorData': instance.errorData,
      'textStatus': instance.textStatus,
      'error': instance.error,
    };

CountTransactionData _$CountTransactionDataFromJson(
        Map<String, dynamic> json) =>
    CountTransactionData(
      totalTransactions: (json['totalTransactions'] as num).toInt(),
      totalCompletedTransaction:
          (json['totalCompletedTransaction'] as num).toInt(),
      totalUncompletedTransaction:
          (json['totalUncompletedTransaction'] as num).toInt(),
      totalPendingTransaction: (json['totalPendingTransaction'] as num).toInt(),
    );

Map<String, dynamic> _$CountTransactionDataToJson(
        CountTransactionData instance) =>
    <String, dynamic>{
      'totalTransactions': instance.totalTransactions,
      'totalCompletedTransaction': instance.totalCompletedTransaction,
      'totalUncompletedTransaction': instance.totalUncompletedTransaction,
      'totalPendingTransaction': instance.totalPendingTransaction,
    };
