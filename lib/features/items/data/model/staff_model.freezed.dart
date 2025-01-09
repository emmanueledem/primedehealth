// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StaffsModel _$StaffsModelFromJson(Map<String, dynamic> json) {
  return _StaffsModel.fromJson(json);
}

/// @nodoc
mixin _$StaffsModel {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get designation => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get productivityScore => throw _privateConstructorUsedError;
  String get currentSalary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffsModelCopyWith<StaffsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffsModelCopyWith<$Res> {
  factory $StaffsModelCopyWith(
          StaffsModel value, $Res Function(StaffsModel) then) =
      _$StaffsModelCopyWithImpl<$Res, StaffsModel>;
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String designation,
      int level,
      int productivityScore,
      String currentSalary});
}

/// @nodoc
class _$StaffsModelCopyWithImpl<$Res, $Val extends StaffsModel>
    implements $StaffsModelCopyWith<$Res> {
  _$StaffsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? designation = null,
    Object? level = null,
    Object? productivityScore = null,
    Object? currentSalary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      productivityScore: null == productivityScore
          ? _value.productivityScore
          : productivityScore // ignore: cast_nullable_to_non_nullable
              as int,
      currentSalary: null == currentSalary
          ? _value.currentSalary
          : currentSalary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffsModelImplCopyWith<$Res>
    implements $StaffsModelCopyWith<$Res> {
  factory _$$StaffsModelImplCopyWith(
          _$StaffsModelImpl value, $Res Function(_$StaffsModelImpl) then) =
      __$$StaffsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String designation,
      int level,
      int productivityScore,
      String currentSalary});
}

/// @nodoc
class __$$StaffsModelImplCopyWithImpl<$Res>
    extends _$StaffsModelCopyWithImpl<$Res, _$StaffsModelImpl>
    implements _$$StaffsModelImplCopyWith<$Res> {
  __$$StaffsModelImplCopyWithImpl(
      _$StaffsModelImpl _value, $Res Function(_$StaffsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? designation = null,
    Object? level = null,
    Object? productivityScore = null,
    Object? currentSalary = null,
  }) {
    return _then(_$StaffsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      productivityScore: null == productivityScore
          ? _value.productivityScore
          : productivityScore // ignore: cast_nullable_to_non_nullable
              as int,
      currentSalary: null == currentSalary
          ? _value.currentSalary
          : currentSalary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffsModelImpl implements _StaffsModel {
  const _$StaffsModelImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.designation,
      required this.level,
      required this.productivityScore,
      required this.currentSalary});

  factory _$StaffsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String designation;
  @override
  final int level;
  @override
  final int productivityScore;
  @override
  final String currentSalary;

  @override
  String toString() {
    return 'StaffsModel(id: $id, firstName: $firstName, lastName: $lastName, designation: $designation, level: $level, productivityScore: $productivityScore, currentSalary: $currentSalary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.productivityScore, productivityScore) ||
                other.productivityScore == productivityScore) &&
            (identical(other.currentSalary, currentSalary) ||
                other.currentSalary == currentSalary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      designation, level, productivityScore, currentSalary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffsModelImplCopyWith<_$StaffsModelImpl> get copyWith =>
      __$$StaffsModelImplCopyWithImpl<_$StaffsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffsModelImplToJson(
      this,
    );
  }
}

abstract class _StaffsModel implements StaffsModel {
  const factory _StaffsModel(
      {required final int id,
      required final String firstName,
      required final String lastName,
      required final String designation,
      required final int level,
      required final int productivityScore,
      required final String currentSalary}) = _$StaffsModelImpl;

  factory _StaffsModel.fromJson(Map<String, dynamic> json) =
      _$StaffsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get designation;
  @override
  int get level;
  @override
  int get productivityScore;
  @override
  String get currentSalary;
  @override
  @JsonKey(ignore: true)
  _$$StaffsModelImplCopyWith<_$StaffsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
