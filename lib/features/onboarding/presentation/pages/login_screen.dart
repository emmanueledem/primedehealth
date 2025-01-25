// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:primedehealth/app/styles/text_styles.dart';
import 'package:primedehealth/app/view/widgets/busy_button.dart';
import 'package:primedehealth/app/view/widgets/custom_text_field.dart';
import 'package:primedehealth/core/constants/app_assets.dart';
import 'package:primedehealth/core/constants/app_colors.dart';
import 'package:primedehealth/core/constants/fonts.dart';
import 'package:primedehealth/core/enums/app_state.dart';
import 'package:primedehealth/core/utils/custom_form_validator.dart';
import 'package:primedehealth/features/onboarding/presentation/provider/login_provider.dart';
import 'package:provider/provider.dart';

class LogginScreen extends StatefulWidget {
  const LogginScreen({super.key});

  @override
  State<LogginScreen> createState() => _LogginScreenState();
}

class _LogginScreenState extends State<LogginScreen> {
  final _passwordFocus = FocusNode();
  final _emailFocusNode = FocusNode();

  bool isChecked = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late StreamController<String> passwordStreamController;
  late StreamController<String> emailStreamController;

  final ValueNotifier<bool> _canSubmit = ValueNotifier(false);
//  code push
  @override
  void initState() {
    super.initState();
    validateStreams();
  }

  void validateStreams() {
    passwordStreamController = StreamController<String>.broadcast();
    emailStreamController = StreamController<String>.broadcast();

    _passwordController.addListener(() {
      passwordStreamController.sink.add(_passwordController.text.trim());
      validateInputs();
    });

    _emailController.addListener(() {
      emailStreamController.sink.add(_emailController.text.trim());
      validateInputs();
    });
  }

  void validateInputs() {
    var canSubmit = true;

    final passwordError = CustomFormValidation.errorMessagePasswordCreation(
      _passwordController.text.trim(),
      'Password is required',
    );

    final emailError = CustomFormValidation.errorEmailMessage(
      _emailController.text.trim(),
      'Email Address is required',
    );

    if (passwordError != '' || emailError != '') {
      canSubmit = false;
    }

    _canSubmit.value = canSubmit;
  }

  @override
  void dispose() {
    super.dispose();
    passwordStreamController.close();
    emailStreamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<OnboardingProvider>(builder: (context, value, child) {
          return Container(
            decoration: BoxDecoration(
              color: AppColors.kWhite,
              borderRadius: BorderRadius.circular(4),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: ListView(
                children: [
                  Center(
                      child: Image.asset(
                    AssetsImages.appIcon,
                    width: 170,
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextBold(
                    'Login',
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center,
                    color: AppColors.kBlack,
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextRegular(
                    'Welcome back! Please enter your details',
                    textAlign: TextAlign.center,
                  ),
                  const Gap(50),
                  StreamBuilder<String>(
                    stream: emailStreamController.stream,
                    builder: (context, snapshot) {
                      return InputField(
                        inputBackgroundColor: AppColors.appBackground,
                        prefix: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SvgPicture.asset(AssetsImages.emailIcon),
                        ),
                        controller: _emailController,
                        placeholder: 'Email',
                        textInputType: TextInputType.emailAddress,
                        validationMessage:
                            CustomFormValidation.errorEmailMessage(
                          snapshot.data,
                          'Email Address is required*',
                        ),
                        validationColor: CustomFormValidation.getColor(
                          snapshot.data,
                          _emailFocusNode,
                          CustomFormValidation.errorEmailMessage(
                            snapshot.data,
                            'Email Address is required*',
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  StreamBuilder<String>(
                    stream: passwordStreamController.stream,
                    builder: (context, snapshot) {
                      return InputField(
                        password: true,
                        inputBackgroundColor: AppColors.appBackground,
                        prefix: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SvgPicture.asset(AssetsImages.passwordLock),
                        ),
                        controller: _passwordController,
                        placeholder: 'Password',
                        validationMessage:
                            CustomFormValidation.errorMessagePasswordCreation(
                          snapshot.data,
                          'Password is required*',
                        ),
                        validationColor: CustomFormValidation.getColor(
                          snapshot.data,
                          _passwordFocus,
                          CustomFormValidation.errorMessage(
                            snapshot.data,
                            'Password is required*',
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Checkbox(
                          activeColor: AppColors.kPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: const BorderSide(
                            color: AppColors.kPrimary,
                            width: 2,
                          ),
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                        ),
                      ),
                      const Gap(12),
                      TextRegular(
                        'Remember me',
                        fontSize: 10,
                        color: AppColors.kBlack,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: TextBold(
                          'Forgot Password?',
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kPrimary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 56,
                  ),
                  ValueListenableBuilder(
                    valueListenable: _canSubmit,
                    builder: (
                      context,
                      canSubmit,
                      child,
                    ) {
                      return BusyButton(
                          title: 'Continue',
                          onpress: () async {
                            await context.read<OnboardingProvider>().Login(
                                  context,
                                  email: _emailController.text.trim(),
                                  password: _passwordController.text.trim(),
                                );
                          },
                          deactivate: !canSubmit,
                          loading: value.state == AppState.busy);
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Don’t have an account?',
                            style: TextStyle(
                              fontFamily: AppFonts.aeonik,
                              fontSize: 13,
                              color: AppColors.kBlack,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: ' Sign Up',
                            style: const TextStyle(
                              fontFamily: AppFonts.aeonik,
                              fontSize: 13,
                              color: AppColors.kPrimary,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
