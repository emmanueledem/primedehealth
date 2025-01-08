import 'package:flutter/material.dart';
import 'package:primedehealth/core/constants/app_assets.dart';
import 'package:primedehealth/core/constants/navigators/routes.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  Future<void> _pageSetup() async {
    final navigator = Navigator.of(context);

    // final userResult = await sl<GetUserUseCase>().call(
    //   const GetUserUseCaseParam(
    //     fromRemote: false,
    //   ),
    // );
    // request permission

    Future.delayed(
      const Duration(seconds: 2),
      () =>
          // userResult.fold((l) {
          navigator.pushReplacementNamed(
        RouteName.login,
      )
      // }, (user) {
      //   BlocProvider.of<ChianUserBloc>(context).add(
      //     UserEvent.updated(user: user),
      //   );
      //   navigator.pushReplacementNamed(
      //     RouteName.welcomeBackView,
      //   );
      // }),
      ,
    );
  }

  @override
  void initState() {
    _pageSetup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
            child: Image.asset(
          AssetsImages.appIcon,
          width: 170,
        )),
      ),
    );
  }
}
