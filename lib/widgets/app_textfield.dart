import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  final String textFieldName;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  const AppTextField({
    super.key,
    required this.textFieldName,
    required this.textEditingController,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.aBeeZee(
        fontSize: 16,
        color: const Color(0xFFFFFFFF),
      ),
      decoration: InputDecoration(
        hintText: textFieldName,
        hintStyle: GoogleFonts.aBeeZee(
          fontSize: 16,
          color: const Color(0xFFFFFFFF),
        ),
        // enabledBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(color: Colors.cyan),
        // ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}
