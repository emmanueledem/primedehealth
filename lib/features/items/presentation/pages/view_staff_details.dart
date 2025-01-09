import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:primedehealth/app/styles/text_styles.dart';
import 'package:primedehealth/app/view/widgets/loader.dart';
import 'package:primedehealth/app/view/widgets/primary_app_bar.dart';
import 'package:primedehealth/core/constants/app_assets.dart';
import 'package:primedehealth/core/constants/app_colors.dart';
import 'package:primedehealth/core/enums/app_state.dart';
import 'package:primedehealth/features/items/data/model/staff_model.dart';

class ViewStaffDetails extends StatefulWidget {
  const ViewStaffDetails({super.key, required this.params});
  final ViewStaffDetailsParams params;
  @override
  State<ViewStaffDetails> createState() => _ViewStaffDetailsState();
}

class _ViewStaffDetailsState extends State<ViewStaffDetails> {
  AppState state = AppState.busy;

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        state = AppState.idle;
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(title: 'Staff Details'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: state == AppState.busy
              ? Center(child: Loader())
              : SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          AssetsImages.userIcon,
                          height: 90,
                          width: 90,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        HeaderText(
                          widget.params.staff.firstName +
                              ' ' +
                              widget.params.staff.lastName,
                          color: AppColors.kBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextRegular(
                                'Other Information',
                                textAlign: TextAlign.left,
                                fontSize: 25,
                                color: AppColors.kBlack,
                                fontWeight: FontWeight.w700,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextRegular(
                                'Designation',
                                fontSize: 18,
                                color: AppColors.kBlack,
                                fontWeight: FontWeight.w800,
                              ),
                              TextRegular(
                                widget.params.staff.designation,
                                color: AppColors.kBlack,
                                fontSize: 18,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextRegular(
                                'Level',
                                fontSize: 18,
                                color: AppColors.kBlack,
                                fontWeight: FontWeight.w800,
                              ),
                              TextRegular(
                                widget.params.staff.level.toString(),
                                color: AppColors.kBlack,
                                fontSize: 18,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextRegular(
                                'Productivity Score',
                                fontSize: 18,
                                color: AppColors.kBlack,
                                fontWeight: FontWeight.w800,
                              ),
                              TextRegular(
                                widget.params.staff.productivityScore
                                    .toString(),
                                color: AppColors.kBlack,
                                fontSize: 18,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextRegular(
                                'Current Salary',
                                fontSize: 18,
                                color: AppColors.kBlack,
                                fontWeight: FontWeight.w800,
                              ),
                              TextRegular(
                                widget.params.staff.currentSalary.toString(),
                                color: AppColors.kBlack,
                                fontSize: 18,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class ViewStaffDetailsParams {
  final StaffsModel staff;

  ViewStaffDetailsParams({required this.staff});
}
