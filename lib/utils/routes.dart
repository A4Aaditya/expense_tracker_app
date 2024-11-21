import 'package:expense_tracker_app/view/getting_started_view.dart';
import 'package:expense_tracker_app/view/home_view.dart';
import 'package:expense_tracker_app/view/login_view.dart';
import 'package:expense_tracker_app/view/splash_view.dart';

class AppRoutes {
  static const splashView = "splashView";
  static const gettingStarted = "gettingStartedView";
  static const loginView = "loginView";
  static const homeView = "homeView";

  static final routes = {
    splashView: (context) => const SplashView(),
    gettingStarted: (context) => const GettingStartedView(),
    loginView: (context) => const LoginView(),
    homeView: (context) => const HomeView(),
  };
}
