import 'package:dartz/dartz.dart';
import 'package:primedehealth/core/error/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:primedehealth/features/onboarding/data/model/user_credential.dart';
import 'package:primedehealth/features/onboarding/domain/repository.dart';

@LazySingleton(as: OnboardingRepository)
class OnboardingRepositoryImpl implements OnboardingRepository {
  OnboardingRepositoryImpl();

  UserCredential userCredential = UserCredential();

  @override
  Future<Either<Failure, bool>> Login({
    required String email,
    required String password,
  }) async {
    if (email != userCredential.email && password != userCredential.password) {
      return Left(Failure.app('Invalid email or password'));
    } else {
      return Right(true);
    }
  }
}
