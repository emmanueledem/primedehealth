import 'package:flutter/material.dart';
import 'package:primedehealth/core/constants/app_colors.dart';

class CustomFormValidation {
  static Color getColor(
    String? text,
    FocusNode focus,
    String? validationError,
  ) {
    if (focus.hasFocus && text == null) {
      return AppColors.kPrimary;
    } else if (focus.hasFocus &&
        text!.isEmpty &&
        validationError != null &&
        validationError.isNotEmpty) {
      return AppColors.kPrimary;
    } else if (focus.hasFocus &&
        text!.isNotEmpty &&
        validationError != null &&
        validationError.isEmpty) {
      return AppColors.kPrimary;
    } else if (text != null &&
        text.isNotEmpty &&
        validationError != null &&
        validationError.isEmpty) {
      return const Color(0xffEBEAED);
    } else if (validationError != null && validationError.isNotEmpty) {
      return AppColors.kPrimary;
    } else {
      return const Color(0xffEBEAED);
    }
  }

  static Color getColorBvn(String? text, FocusNode focus) {
    if (focus.hasFocus && text == null) {
      return const Color.fromRGBO(255, 255, 255, 0.1);
    }
    if (focus.hasFocus && text != null && text.isEmpty) {
      return Colors.redAccent;
    } else if (text != null && text.length != 11) {
      return Colors.redAccent;
    } else if (focus.hasFocus && text != null && text.isNotEmpty) {
      return const Color(0xffEBEAED);
    } else {
      return const Color(0xffEBEAED);
    }
  }

  static String errorEmailMessage(
    String? text,
    String message, [
    String? type,
  ]) {
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (EmailValidator.validEmail(text) == false) {
      return 'Email must be a valid email address';
    } else {
      return '';
    }
  }

  static String errorAmountMessage(
    String? text,
    String message, [
    String? type,
  ]) {
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else {
      final initialAmount =
          text.replaceAll('₦', '').replaceAll(',', '').replaceAll('.00', '');

      if (num.parse(initialAmount) > 0) {
        return '';
      } else {
        return 'Invalid Amount';
      }
    }
  }

  static String errorAmountMessageWithoutBalanace(
    String? text,
    String message, [
    String? type,
  ]) {
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else {
      final initialAmount =
          text.replaceAll('₦', '').replaceAll(',', '').replaceAll('.00', '');

      if (num.parse(initialAmount) > 0) {
        return '';
      } else {
        return 'Invalid Amount';
      }
    }
  }

  static String errorMessage(String? text, String message, [String? type]) {
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else {
      return '';
    }
  }

  static String errorTranferAmountMessage(
    String? text,
    String message,
    int balance, [
    String? type,
  ]) {
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (num.parse(text) > balance) {
      return 'Insufficient balance.';
    } else {
      return '';
    }
  }

  static String errorMessageUrl(String? text, String message, [String? type]) {
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else {
      final textInput = Uri.parse(text).isAbsolute;
      if (textInput) {
        return '';
      } else {
        return 'Enter a valid url';
      }
    }
  }

  static String errorMessagePasswordCreation(
    String? text,
    String message, [
    String? type,
  ]) {
    final regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (text.length <= 8) {
      return 'Password must have 8 or more characters';
    } else {
      return '';
    }
  }

  static String errorMessagePassword(
    String? text,
    String message, [
    String? type,
  ]) {
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (text.length < 8) {
      return 'Password must have 8 or more characters';
    } else {
      return '';
    }
  }

  static String errorMessageConfirmPassword(
    String? text,
    String message,
    String? password, [
    String? type,
  ]) {
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (text.length < 8) {
      return 'Confirmation Password must have 8 or more characters';
    } else if (text != password) {
      return 'Confirmation password must match password';
    } else {
      return '';
    }
  }

  static String errorMessageOtp(
    String? text,
    String message, [
    String? type,
  ]) {
    final hasANumber = RegExp('(?=.*?[0-9])');
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (text.length != 4) {
      return 'OTP must have 4 characters';
    } else if (!hasANumber.hasMatch(text)) {
      return 'OTP must have a number';
    } else {
      return '';
    }
  }

  static String errorMessageOtpSix(
    String? text,
    String message, [
    String? type,
  ]) {
    final hasANumber = RegExp('(?=.*?[0-9])');
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (text.length != 6) {
      return 'OTP must have 6 characters';
    } else if (!hasANumber.hasMatch(text)) {
      return 'OTP must have a number';
    } else {
      return '';
    }
  }

  static String errorMessageBvn(
    String? text,
    String message, [
    String? type,
  ]) {
    final hasANumber = RegExp('(?=.*?[0-9])');
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (text.length != 11) {
      return 'BVN must have 11 characters';
    } else if (!hasANumber.hasMatch(text)) {
      return 'BVN must be a number';
    } else {
      return '';
    }
  }

  static String errorMessageNin(
    String? text,
    String message, [
    String? type,
  ]) {
    final hasANumber = RegExp('(?=.*?[0-9])');
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (text.length != 11) {
      return 'NIN must have 11 characters';
    } else if (!hasANumber.hasMatch(text)) {
      return 'NIN must be a number';
    } else {
      return '';
    }
  }

  static String errorMessageUserName(
    String? text,
    String message, [
    String? type,
  ]) {
    final hasSpace = RegExp('[^A-Za-z0-9_]');
    if (text == null) {
      return '';
    }
    if (hasSpace.hasMatch(text)) {
      return 'Username can contain only letters, numbers and underscores.';
    } else if (text.isEmpty) {
      return message;
    } else {
      return '';
    }
  }

  static String errorTransferAmount(
    String? text,
    String message,
    double amount, [
    String? type,
  ]) {
    final textWithoutCommas = text.toString().replaceAll(',', '');
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (textWithoutCommas == '0') {
      return message;
    } else if (double.parse(textWithoutCommas) > amount) {
      return 'insufficient balance';
    } else {
      return '';
    }
  }

  static String errorRequestAmount(
    String? text,
    String message, [
    String? type,
  ]) {
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (text == '0') {
      return message;
    } else {
      return '';
    }
  }
}

class EmailValidator {
  static bool validEmail(String email) {
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
  }
}
