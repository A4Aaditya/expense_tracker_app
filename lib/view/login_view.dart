import 'package:expense_tracker_app/data/expense_db.dart';
import 'package:expense_tracker_app/utils/app_colors.dart';
import 'package:expense_tracker_app/utils/routes.dart';
import 'package:expense_tracker_app/widgets/app_button.dart';
import 'package:expense_tracker_app/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final nameController = TextEditingController();
  final totalBalanceController = TextEditingController();
  final incomePerMonthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/login.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 7,
            child: Image.asset(
              "assets/images/vector.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.2,
            right: 12,
            child: AppButton(
              onClicked: () {
                ExpenseDb().insertUserData();
                // const route = AppRoutes.homeView;
                // Navigator.pushNamedAndRemoveUntil(
                //   context,
                //   route,
                //   (routes) => false,
                // );
              },
              buttonName: "Let's go",
              buttonNameColor: AppColors.appButtonNameColor1,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.9,
            // bottom: MediaQuery.of(context).size.height / 2,
            right: 0,
            left: 0,
            child: userDetailsContainer(context: context),
          )
        ],
      ),
    );
  }

  Widget userDetailsContainer({
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "You are just one step away!",
            style: GoogleFonts.bizUDPGothic(
              decoration: TextDecoration.none,
              fontSize: 16,
              color: const Color(0xFFFFFFFF),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              // gradient: const LinearGradient(
              //   colors: [
              //     Color(0xFF646464),
              //     Color(0xFFFFFFFF),
              //   ],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
            ),
            child: Column(
              children: [
                AppTextField(
                  keyboardType: TextInputType.name,
                  textEditingController: nameController,
                  textFieldName: "Name",
                ),
                const SizedBox(height: 12),
                AppTextField(
                  keyboardType: TextInputType.number,
                  textEditingController: totalBalanceController,
                  textFieldName: "Total Balance",
                ),
                const SizedBox(height: 12),
                AppTextField(
                  keyboardType: TextInputType.number,
                  textEditingController: incomePerMonthController,
                  textFieldName: "Income Per Month",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
