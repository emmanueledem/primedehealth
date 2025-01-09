import 'package:flutter/material.dart';

import 'package:injectable/injectable.dart';
import 'package:primedehealth/core/enums/app_state.dart';
import 'package:primedehealth/core/error/failure.dart';
import 'package:primedehealth/core/usecase.dart';
import 'package:primedehealth/features/items/data/model/staff_model.dart';
import 'package:primedehealth/features/items/domain/usecases/staffs_usecases.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:logger/logger.dart';

@lazySingleton
class StaffsProvider extends ChangeNotifier {
  StaffsProvider({
    required this.staffUsecase,
  });

  final StaffUsecase staffUsecase;

  Failure? failure;
  List<StaffsModel>? allStaffs;
  String? messageResponse;
  AppState state = AppState.idle;

  Future<bool> getStaffs(
    BuildContext context,
  ) async {
    state = AppState.busy;
    notifyListeners();
    final result = await staffUsecase(NoParams());
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
          const Duration(seconds: 2),
          () {
            state = AppState.idle;
            notifyListeners();
          },
        );

        allStaffs = r;
        return true;
      },
    );
  }
}
