import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final String buttonName;
  final void Function()? onClicked;
  final Color? buttonNameColor;
  const AppButton({
    super.key,
    required this.onClicked,
    required this.buttonName,
    this.buttonNameColor = const Color(0xFF3F3F3F),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      child: Container(
        height: 71,
        width: 167,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: GoogleFonts.aBeeZee(
              color: buttonNameColor,
              fontSize: 32,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
    ;
  }
}
