import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:primedehealth/app/styles/text_styles.dart';
import 'package:primedehealth/core/constants/app_assets.dart';
import 'package:primedehealth/core/constants/app_colors.dart';

// AppBar for other screen with a back button and optional title
class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    required this.title,
    this.mark,
    super.key,
    this.fontSize = 14,
    this.leading,
    this.titleColor = AppColors.kBlack,
    this.action,
    this.showLeading = true,
    this.backgroundColor = AppColors.kWhite,
  });

  final String title;
  final String? mark;
  final Color titleColor;
  final Widget? leading;
  final Widget? action;
  final double fontSize;
  final Color backgroundColor;
  final bool showLeading;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: AppColors.kBlack,
      ),
      leadingWidth: 40,
      leading: showLeading
          ? GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Platform.isIOS
                  ? const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.chevron_left_sharp,
                        size: 30,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: SvgPicture.asset(
                        AssetsImages.backIcon,
                      ),
                    ),
            )
          : const SizedBox.shrink(),
      scrolledUnderElevation: 0,
      title: TextBold(
        title,
        fontSize: fontSize,
        color: titleColor,
      ),
      actions: [
        if (action != null) action!,
      ],
      backgroundColor: backgroundColor,
      elevation: 0,
    );
  }
}
