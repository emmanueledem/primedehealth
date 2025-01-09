// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffsModelImpl _$$StaffsModelImplFromJson(Map<String, dynamic> json) =>
    _$StaffsModelImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      designation: json['designation'] as String,
      level: (json['level'] as num).toInt(),
      productivityScore: (json['productivityScore'] as num).toInt(),
      currentSalary: json['currentSalary'] as String,
    );

Map<String, dynamic> _$$StaffsModelImplToJson(_$StaffsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'designation': instance.designation,
      'level': instance.level,
      'productivityScore': instance.productivityScore,
      'currentSalary': instance.currentSalary,
    };
