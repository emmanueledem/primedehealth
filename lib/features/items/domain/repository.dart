import 'package:dartz/dartz.dart';
import 'package:primedehealth/core/error/failure.dart';
import 'package:primedehealth/features/items/data/model/staff_model.dart';

abstract class StaffsRepository {
  Future<Either<Failure, List<StaffsModel>>> getStaffs();
}
