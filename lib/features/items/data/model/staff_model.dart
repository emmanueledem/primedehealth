import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_model.freezed.dart';
part 'staff_model.g.dart';

@freezed
class StaffsModel with _$StaffsModel {
  const factory StaffsModel({
    required int id,
    required String firstName,
    required String lastName,
    required String designation,
    required int level,
    required int productivityScore,
    required String currentSalary,
  }) = _StaffsModel;

  factory StaffsModel.fromJson(Map<String, dynamic> json) =>
      _$StaffsModelFromJson(json);
}
