import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:primedehealth/core/error/failure.dart';
import 'package:primedehealth/core/usecase.dart';
import 'package:primedehealth/features/items/data/model/staff_model.dart';
import 'package:primedehealth/features/items/domain/repository.dart';

@lazySingleton
class StaffUsecase implements UseCase<List<StaffsModel>, NoParams> {
  StaffUsecase(this.repository);

  final StaffsRepository repository;

  @override
  Future<Either<Failure, List<StaffsModel>>> call(
    NoParams params,
  ) async {
    return repository.getStaffs();
  }
}
