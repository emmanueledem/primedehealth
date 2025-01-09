// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:primedehealth/core/dependency_injection/register_module.dart'
    as _i15;
import 'package:primedehealth/core/network_info.dart' as _i6;
import 'package:primedehealth/features/items/domain/repository.dart' as _i9;
import 'package:primedehealth/features/items/domain/repository_implemtation.dart'
    as _i10;
import 'package:primedehealth/features/items/domain/usecases/staffs_usecases.dart'
    as _i13;
import 'package:primedehealth/features/items/presentation/provider/staffs_provider.dart'
    as _i14;
import 'package:primedehealth/features/onboarding/domain/repository.dart'
    as _i7;
import 'package:primedehealth/features/onboarding/domain/repository_implementation.dart'
    as _i8;
import 'package:primedehealth/features/onboarding/domain/usecases/login_usecase.dart'
    as _i11;
import 'package:primedehealth/features/onboarding/presentation/provider/login_provider.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.lazySingleton<_i5.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i6.NetworkInfo>(
      () => _i6.NetworkInfoImpl(get<_i5.InternetConnectionChecker>()));
  gh.lazySingleton<_i7.OnboardingRepository>(
      () => _i8.OnboardingRepositoryImpl());
  gh.lazySingleton<_i9.StaffsRepository>(() => _i10.staffsRepositoryImpl());
  gh.lazySingleton<_i11.LoginUsecase>(
      () => _i11.LoginUsecase(get<_i7.OnboardingRepository>()));
  gh.lazySingleton<_i12.OnboardingProvider>(
      () => _i12.OnboardingProvider(loginUsecase: get<_i11.LoginUsecase>()));
  gh.lazySingleton<_i13.StaffUsecase>(
      () => _i13.StaffUsecase(get<_i9.StaffsRepository>()));
  gh.lazySingleton<_i14.StaffsProvider>(
      () => _i14.StaffsProvider(staffUsecase: get<_i13.StaffUsecase>()));
  return get;
}

class _$RegisterModule extends _i15.RegisterModule {}
