import 'package:expense_tracker_app/utils/routes.dart';
import 'package:expense_tracker_app/view/getting_started_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.gettingStarted,
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/images/splash.png"),
    );
  }
}
