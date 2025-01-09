// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonResponse _$JsonResponseFromJson(Map<String, dynamic> json) => JsonResponse(
      statusCode: (json['statusCode'] as num).toInt(),
      error: json['error'],
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$JsonResponseToJson(JsonResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };
