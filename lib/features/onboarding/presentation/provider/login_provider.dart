import 'package:flutter/material.dart';

import 'package:injectable/injectable.dart';
import 'package:primedehealth/core/constants/navigators/routes.dart';
import 'package:primedehealth/core/enums/app_state.dart';
import 'package:primedehealth/core/error/failure.dart';
import 'package:primedehealth/features/onboarding/domain/usecases/login_usecase.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

@lazySingleton
class OnboardingProvider extends ChangeNotifier {
  OnboardingProvider({
    required this.loginUsecase,
  });

  final LoginUsecase loginUsecase;

  Failure? failure;
  bool? loginStatus;

  String? messageResponse;
  AppState state = AppState.idle;

  Future<bool> Login(BuildContext context,
      {required String email, required String password}) async {
    state = AppState.busy;
    notifyListeners();
    final result = await loginUsecase(
        LoginUsecaseParams(email: email, password: password));
    return result.fold(
      (l) {
        state = AppState.idle;
        notifyListeners();
        failure = l;
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.error(
            message: ConvertFailureToString().call(
              failure ?? const Failure.unknown(),
            ),
          ),
        );
        return false;
      },
      (r) async {
        Future.delayed(
          const Duration(seconds: 1),
          () {
            state = AppState.idle;
            notifyListeners();
            Navigator.pushReplacementNamed(context, RouteName.home);
          },
        );
        loginStatus = r;
        return true;
      },
    );
  }
}
