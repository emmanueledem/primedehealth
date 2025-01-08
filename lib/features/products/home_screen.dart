import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:primedehealth/app/styles/text_styles.dart';
import 'package:primedehealth/app/view/widgets/primary_app_bar.dart';
import 'package:primedehealth/core/constants/app_assets.dart';
import 'package:primedehealth/core/constants/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: 'Staffs',
        showLeading: false,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(22),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.grey200, width: 3)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 13),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AssetsImages.userIcon,
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBold(
                          'James Gula',
                          fontSize: 13,
                          color: AppColors.kBlack,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              TextRegular(
                                'CEO',
                                fontSize: 10,
                                color: AppColors.kBlack,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
