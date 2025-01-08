import 'package:flutter/material.dart';
import 'package:primedehealth/core/constants/app_colors.dart';
import 'package:primedehealth/core/constants/fonts.dart';

/// Base text with black color and letter spacing set
///  [AppTextBase]
class AppTextBase extends StatelessWidget {
  const AppTextBase(
    this.text, {
    this.style,
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.visible,
    this.maxLines = 1,
    this.softwrap,
    super.key,
  }) : assert(text != null, 'test can not be null');
  final String? text;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;
  final bool? softwrap;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: const TextStyle(
        fontSize: 14,
      ).merge(style),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softwrap,
    );
  }
}

///  [TextBold] .
class TextBold extends AppTextBase {
  TextBold(
    String super.text, {
    super.key,
    TextStyle? style,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w700,
    Color? color,
    super.textAlign,
    super.overflow,
    super.maxLines = 2,
  }) : super(
          style: TextStyle(
            fontFamily: AppFonts.aeonik,
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color ?? AppColors.purple900,
          ).merge(style),
        );
}

class AppTextSemiBold extends AppTextBase {
  AppTextSemiBold(
    String super.text, {
    super.key,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    super.maxLines = 2,
  }) : super(
          style: const TextStyle(
            fontFamily: AppFonts.aeonik,
          ).merge(style),
          textAlign: textAlign ?? TextAlign.left,
          overflow: overflow ?? TextOverflow.visible,
        );
}

class HeaderText extends AppTextBase {
  HeaderText(
    String super.text, {
    super.key,
    TextStyle? style,
    double fontSize = 32,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    FontWeight fontWeight = FontWeight.w700,
    super.maxLines = 2,
    String fontFamily = AppFonts.aeonik,
  }) : super(
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: color ?? AppColors.purple900,
          ).merge(style),
          textAlign: textAlign ?? TextAlign.left,
          overflow: overflow ?? TextOverflow.visible,
        );
}

///  [TextRegular] .
class TextRegular extends AppTextBase {
  TextRegular(
    String super.text, {
    super.key,
    TextStyle? style,
    double fontSize = 15,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
    super.textAlign,
    super.overflow,
    super.softwrap,
    String fontFamily = AppFonts.aeonik,
    super.maxLines = 3,
  }) : super(
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            color: color ?? AppColors.textColor,
          ).merge(style),
        );
}

class TextBody extends TextRegular {
  TextBody(
    super.text, {
    super.key,
    TextStyle? style,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
    double? fontSize,
    super.textAlign,
    super.overflow,
    super.maxLines,
    double? height,
  }) : super(
          style: TextStyle(
            fontSize: fontSize ?? 14,
            color: color ?? AppColors.purple900,
            fontWeight: fontWeight,
            height: height,
          ).merge(style),
        );
}

class LongText extends StatelessWidget {
  const LongText(
    this.text, {
    this.style,
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.visible,
    this.color = AppColors.kBlack,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.maxLines = 1,
    super.key,
  }) : assert(text != null, 'test can not be null');
  final String? text;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(
        fontSize: fontSize,
        color: color ?? AppColors.kBlack,
        fontWeight: fontWeight,
        fontFamily: AppFonts.aeonik,
      ).merge(style),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

class LongerText extends StatelessWidget {
  const LongerText(
    this.text, {
    this.style,
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.visible,
    this.color = AppColors.kBlack,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    super.key,
  });
  final String? text;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    assert(text != null, 'test can not be null');
    return Text(
      text ?? '',
      style: TextStyle(
        fontSize: fontSize,
        color: color ?? AppColors.kBlack,
        fontWeight: fontWeight,
        fontFamily: AppFonts.aeonik,
      ).merge(style),
      textAlign: textAlign,
      overflow: overflow,
      //softWrap: true,
    );
  }
}
