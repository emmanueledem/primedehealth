import 'package:dartz/dartz.dart';
import 'package:primedehealth/core/error/failure.dart';

abstract class OnboardingRepository {
  Future<Either<Failure, bool>> Login({
    required String email,
    required String password,
  });
}
