import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:primedehealth/core/error/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:primedehealth/features/items/data/datasources/data.dart';
import 'package:primedehealth/features/items/data/model/json_response.dart';
import 'package:primedehealth/features/items/data/model/staff_model.dart';
import 'package:primedehealth/features/items/domain/repository.dart';

@LazySingleton(as: StaffsRepository)
class staffsRepositoryImpl implements StaffsRepository {
  staffsRepositoryImpl();
  Map<String, dynamic> successResponse = Api.successResponse;

  @override
  Future<Either<Failure, List<StaffsModel>>> getStaffs() async {
    if (successResponse['statusCode'] == 200) {
      final apiResponse = JsonResponse.fromJson(successResponse);
      final staffList = (apiResponse.data as List).map((e) {
        return StaffsModel.fromJson(
          e as Map<String, dynamic>,
        );
      }).toList();
      return Right(staffList);
    } else {
      return Left(Failure.app('An error occurred'));
    }
  }
}
