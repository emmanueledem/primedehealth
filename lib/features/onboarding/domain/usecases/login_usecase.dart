import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:injectable/injectable.dart';
import 'package:primedehealth/core/error/failure.dart';
import 'package:primedehealth/core/usecase.dart';
import 'package:primedehealth/features/onboarding/domain/repository.dart';

@lazySingleton
class LoginUsecase implements UseCase<bool, LoginUsecaseParams> {
  LoginUsecase(this.repository);

  final OnboardingRepository repository;

  @override
  Future<Either<Failure, bool>> call(
    LoginUsecaseParams params,
  ) async {
    return repository.Login(email: params.email, password: params.password);
  }
}

class LoginUsecaseParams extends Equatable {
  const LoginUsecaseParams({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
