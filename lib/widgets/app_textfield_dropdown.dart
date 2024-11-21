import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextFieldDropDown extends StatefulWidget {
  final String textFieldName;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final void Function()? onDropdownClicked;

  const AppTextFieldDropDown({
    super.key,
    required this.textFieldName,
    required this.onDropdownClicked,
    required this.textEditingController,
    required this.keyboardType,
  });

  @override
  State<AppTextFieldDropDown> createState() => _AppTextFieldDropDownState();
}

class _AppTextFieldDropDownState extends State<AppTextFieldDropDown> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onDropdownClicked,
      readOnly: true,
      style: GoogleFonts.aBeeZee(
        fontSize: 16,
        color: const Color(0xFFFFFFFF),
      ),
      decoration: InputDecoration(
        hintText: widget.textFieldName,
        hintStyle: GoogleFonts.aBeeZee(
          fontSize: 16,
          color: const Color(0xFFFFFFFF),
        ),
        // enabledBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(color: Colors.cyan),
        // ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
