import 'package:json_annotation/json_annotation.dart';
part 'json_response.g.dart';

@JsonSerializable()
class JsonResponse {
  final int statusCode;
  final dynamic error;
  final String message;
  final List<Map<String, dynamic>> data;

  const JsonResponse(
      {required this.statusCode,
      required this.error,
      required this.message,
      required this.data});

  factory JsonResponse.fromJson(Map<String, dynamic> json) =>
      _$JsonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JsonResponseToJson(this);
}
