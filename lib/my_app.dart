import 'package:expense_tracker_app/utils/routes.dart';
import 'package:expense_tracker_app/view/splash_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      theme: ThemeData.light(),
      home: const SplashView(),
    );
  }
}
