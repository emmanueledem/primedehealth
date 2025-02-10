import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:primedehealth/core/error/failure.dart';
import 'package:primedehealth/core/utils/custom_form_validator.dart';
import 'package:primedehealth/features/items/data/model/staff_model.dart';
import 'package:primedehealth/features/items/domain/repository_implemtation.dart';
import 'package:primedehealth/features/onboarding/domain/repository_implementation.dart';

class MockApi extends Mock {
  Map<String, dynamic> successResponse = {
    "statusCode": 200,
    "message": "Successful!",
    "errors": null,
    "data": [
      {
        "id": 66,
        "firstName": "Jonathan",
        "lastName": "Strange",
        "designation": "Custoner Relations",
        "level": 1,
        "productivityScore": 78.0,
        "currentSalary": "100,000",
      },
      {
        "id": 1,
        "firstName": "Abigail",
        "lastName": "Abernathy",
        "designation": "Custoner Relations",
        "level": 0,
        "productivityScore": 45.0,
        "currentSalary": "70,000",
      },
    ]
  };

  Map<String, dynamic> failureResponse = {
    'statusCode': 400,
    'message': 'An Error Occured'
  };
}

void main() {
  late MockApi mocktail;
  late staffsRepositoryImpl repository;
  late OnboardingRepositoryImpl onboardingRepositoryImpl;

  setUp(() {
    repository = staffsRepositoryImpl();
    mocktail = MockApi();
    onboardingRepositoryImpl = OnboardingRepositoryImpl();
  });

  group("Email Validator ", () {
    test('Given when email correct return true', () {
      final emailVal = EmailValidator.validEmail('emmanuelokon591@gmail.com');
      expect(emailVal, true);
    });
  });

  group('Staff Test', () {
    test('Given staff screen return an Exception', () async {
      repository.successResponse = mocktail.failureResponse;

      final staffs = await repository.getStaffs();
      expect(
        staffs.fold((l) => l, (r) => r),
        isA<Failure>(),
      );
    });

    test('Given staff screen return a list of staff on staff screen', () async {
      repository.successResponse = mocktail.successResponse;

      final staffs = await repository.getStaffs();
      expect(staffs.fold((l) => l, (r) => r), isA<List<StaffsModel>>());
    });

    test('Given When user tries to login with correct credentials return true',
        () async {
      final userLogin = await onboardingRepositoryImpl.Login(
        email: 'email@gmail.com',
        password: 'TestAccount',
      );
      expect(
        userLogin.fold((l) => l, (r) => r),
        isA<bool>(),
      );
    });

    test(
        'Given when user tries to login with wrong credentials retun exception',
        () async {
      final userLogin = await onboardingRepositoryImpl.Login(
          email: 'wrongEmail', password: 'WrongPassword');
      expect(userLogin.fold((l) => l, (r) => r), isA<Failure>());
    });
  });
}
