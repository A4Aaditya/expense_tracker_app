import 'package:expense_tracker_app/utils/app_arrow.dart';
import 'package:expense_tracker_app/utils/app_colors.dart';
import 'package:expense_tracker_app/widgets/app_textfield.dart';
import 'package:expense_tracker_app/widgets/app_textfield_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final descriptionController = TextEditingController();
  final categoryController = TextEditingController();
  final transactionDateTimeController = TextEditingController();
  final amountController = TextEditingController();

  bool isExpense = false;

  String? userSelectedDate;
  String? userSelectedCategory;
  String? totalAmount;
  List<String> categoryType = [
    "Travel",
    "Shopping",
    "Movie",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/common_background.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 100,
            right: 30,
            left: 30,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: isExpense
                      ? Text(
                          "Add Expense ${AppArrow.arrowDown}",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 32,
                            color: AppColors.appNameTextColor,
                          ),
                        )
                      : Text(
                          "Add Income ${AppArrow.arrowUp}",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 32,
                            color: AppColors.appNameTextColor,
                          ),
                        ),
                ),
                const SizedBox(height: 30),
                Text(
                  "How much? ",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 16,
                    color: AppColors.appNameTextColor,
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  cursorHeight: 40,
                  controller: amountController,
                  style: GoogleFonts.aBeeZee(
                    fontSize: 96,
                    color: const Color(0xFFFFFFFF),
                  ),
                  decoration: InputDecoration(
                    hintText: "0",
                    hintStyle: GoogleFonts.aBeeZee(
                      fontSize: 96,
                      color: const Color(0xFFFFFFFF),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
                const SizedBox(height: 30),
                AppTextField(
                  textFieldName: "Description ▽",
                  textEditingController: descriptionController,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 16),
                AppTextFieldDropDown(
                  textFieldName: userSelectedCategory ?? "Category ▽",
                  textEditingController: categoryController,
                  keyboardType: TextInputType.name,
                  onDropdownClicked: () {
                    onCategoryClicked(context);
                  },
                ),
                const SizedBox(height: 16),
                AppTextFieldDropDown(
                  onDropdownClicked: onTransactionDateClicked,
                  textFieldName: userSelectedDate ?? "Transaction Date ▽",
                  textEditingController: transactionDateTimeController,
                  keyboardType: TextInputType.name,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onCategoryClicked(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 400,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 171, 106, 106),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: ListView.builder(
              itemCount: categoryType.length,
              itemBuilder: (context, index) {
                final text = categoryType[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      userSelectedCategory = text;
                    });
                    Navigator.pop(context);
                  },
                  child: Card(
                    child: SizedBox(
                      height: 71,
                      child: Center(
                        child: Text(
                          text,
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16,
                            color: AppColors.appButtonNameColor1,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  void onTransactionDateClicked() async {
    FocusScope.of(context).requestFocus(FocusNode());
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2040),
    );
    if (selectedDate == null) return;
    setState(() {
      final val = DateFormat('dd-MM-yyyy').format(selectedDate);
      userSelectedDate = val;
    });
  }
}
