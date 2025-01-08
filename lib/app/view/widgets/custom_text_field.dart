import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:primedehealth/core/constants/app_assets.dart';
import 'package:primedehealth/core/constants/app_colors.dart';
import 'package:primedehealth/core/constants/fonts.dart';

class InputField extends StatefulWidget {
  const InputField({
    required this.controller,
    required this.placeholder,
    this.label,
    this.enterPressed,
    this.fieldFocusNode,
    this.nextFocusNode,
    this.additionalNote,
    this.onChanged,
    this.maxLength,
    this.maxLines = 1,
    this.validationMessage,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.password = false,
    this.isReadOnly = false,
    this.smallVersion = true,
    this.inputBorder = true,
    this.inputBackgroundColor = AppColors.kWhite,
    this.suffix,
    this.onTap,
    this.prefix,
    this.validationColor = AppColors.inputBorderColor,
    this.prefixSizedBoxWidth = 20,
    super.key,
  });

  final TextEditingController controller;
  final TextInputType? textInputType;
  final bool password;
  final bool isReadOnly;
  final String placeholder;
  final String? validationMessage;
  final Function? enterPressed;
  final bool smallVersion;
  final bool inputBorder;
  final FocusNode? fieldFocusNode;
  final Function? onTap;
  final FocusNode? nextFocusNode;
  final TextInputAction textInputAction;
  final String? additionalNote;
  final String? label;
  final double prefixSizedBoxWidth;
  // ignore: inference_failure_on_function_return_type
  final Function(String)? onChanged;

  final int? maxLines;
  final int? maxLength;
  final Widget? suffix;
  final Widget? prefix;
  final Color validationColor;
  final Color inputBackgroundColor;

  @override
  // ignore: library_private_types_in_public_api
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool? isPassword;
  double fieldHeight = 48;

  @override
  void initState() {
    super.initState();
    isPassword = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: Container(
            height: fieldHeight,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: widget.inputBackgroundColor,
              border: widget.inputBorder
                  ? Border.all(
                      color: widget.validationColor,
                    )
                  : Border.all(color: widget.inputBackgroundColor),
            ),
            child: Row(
              children: <Widget>[
                widget.prefix ?? const SizedBox(),
                Expanded(
                  child: TextField(
                    cursorColor: AppColors.kPrimary,
                    controller: widget.controller,
                    keyboardType: widget.textInputType,
                    focusNode: widget.fieldFocusNode,
                    textInputAction: widget.textInputAction,
                    onChanged: widget.onChanged,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.inputtextColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFonts.aeonik,
                    ),
                    obscureText: isPassword!,
                    readOnly: widget.isReadOnly,
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    decoration: InputDecoration(
                      hintText: widget.placeholder,
                      border: InputBorder.none,
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.aeonik,
                      ),
                      // suffix:
                    ),
                  ),
                ),
                widget.suffix ??
                    GestureDetector(
                      onTap: () => setState(() {
                        isPassword = !isPassword!;
                      }),
                      child: widget.password
                          ? Container(
                              width: 30,
                              height: 30,
                              alignment: Alignment.center,
                              child: isPassword!
                                  ? SvgPicture.asset(AssetsImages.eye)
                                  : SvgPicture.asset(
                                      AssetsImages.eyeSlash,
                                    ),
                            )
                          : const SizedBox.shrink(),
                    ),
              ],
            ),
          ),
        ),
        if (widget.validationMessage != null)
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.validationMessage!,
              style: const TextStyle(
                color: AppColors.kPrimary,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                fontFamily: AppFonts.aeonik,
              ),
            ),
          )
        else
          const SizedBox(),
      ],
    );
  }
}

class SearchInputField extends StatefulWidget {
  const SearchInputField({
    required this.controller,
    required this.placeholder,
    this.label,
    this.enterPressed,
    this.fieldFocusNode,
    this.nextFocusNode,
    this.additionalNote,
    this.onChanged,
    this.maxLength,
    this.maxLines = 1,
    this.validationMessage,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.password = false,
    this.isReadOnly = false,
    this.smallVersion = true,
    this.inputBackgroundColor = AppColors.kWhite,
    this.suffix,
    this.onTap,
    this.prefix,
    this.validationColor = AppColors.inputBorderColor,
    this.prefixSizedBoxWidth = 20,
    super.key,
  });

  final TextEditingController controller;
  final TextInputType? textInputType;
  final bool password;
  final bool isReadOnly;
  final String placeholder;
  final String? validationMessage;
  final Function? enterPressed;
  final bool smallVersion;
  final FocusNode? fieldFocusNode;
  final Function? onTap;
  final FocusNode? nextFocusNode;
  final TextInputAction textInputAction;
  final String? additionalNote;
  final String? label;
  final double prefixSizedBoxWidth;
  // ignore: inference_failure_on_function_return_type
  final Function(String)? onChanged;

  final int? maxLines;
  final int? maxLength;
  final Widget? suffix;
  final Widget? prefix;
  final Color validationColor;
  final Color inputBackgroundColor;

  @override
  // ignore: library_private_types_in_public_api
  _SearchInputFieldState createState() => _SearchInputFieldState();
}

class _SearchInputFieldState extends State<SearchInputField> {
  bool? isPassword;
  double fieldHeight = 48;

  @override
  void initState() {
    super.initState();
    isPassword = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: Container(
            height: fieldHeight,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: widget.inputBackgroundColor,
            ),
            child: Row(
              children: <Widget>[
                widget.prefix ?? const SizedBox(),
                Expanded(
                  child: TextField(
                    cursorColor: AppColors.kPrimary,
                    controller: widget.controller,
                    keyboardType: widget.textInputType,
                    focusNode: widget.fieldFocusNode,
                    textInputAction: widget.textInputAction,
                    onChanged: widget.onChanged,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.inputtextColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFonts.aeonik,
                    ),
                    obscureText: isPassword!,
                    readOnly: widget.isReadOnly,
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    decoration: InputDecoration(
                      hintText: widget.placeholder,
                      border: InputBorder.none,
                      hintStyle: const TextStyle(
                        fontSize: 13,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.aeonik,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
