import 'package:expense_tracker_app/utils/app_colors.dart';
import 'package:expense_tracker_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GettingStartedView extends StatelessWidget {
  const GettingStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          left: 0,
          child: Image.asset(
            "assets/images/getting_started.png",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4,
          child: Image.asset(
            "assets/images/vector.png",
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.3,
          left: 12,
          child: Text(
            "Welcome to",
            style: GoogleFonts.aBeeZee(
              fontSize: 40,
              color: AppColors.appNameTextColor,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.2,
          left: 12,
          child: Text(
            "ExpenseX",
            style: GoogleFonts.brunoAceSc(
              fontSize: 40,
              color: AppColors.appNameTextColor,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.2,
          right: 12,
          child: CircleAvatar(
            radius: 30,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 30,
              ),
              onPressed: () {
                const route = AppRoutes.loginView;
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  route,
                  (routes) => false,
                );
              },
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
