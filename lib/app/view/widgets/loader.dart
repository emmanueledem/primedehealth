import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primedehealth/core/constants/app_colors.dart';

class Loader extends StatelessWidget {
  const Loader({
    super.key,
    this.color = AppColors.kPrimary,
    this.size = 20,
    this.strokeWidth = 2,
  });

  final Color color;
  final double size;
  final double strokeWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Platform.isIOS
          ? const CupertinoActivityIndicator(
              radius: 15,
            )
          : CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(color),
            ),
    );
  }
}
