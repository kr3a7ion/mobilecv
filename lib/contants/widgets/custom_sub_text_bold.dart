import 'package:flutter/material.dart';
import 'package:mobilecv/contants/colors/app_colors.dart';

class CustomSubTextBold extends StatelessWidget {
  const CustomSubTextBold({
    Key? key,
    required this.theText,
    this.theAlignment = TextAlign.justify,
  }) : super(key: key);
  final String theText;

  final TextAlign theAlignment;

  @override
  Widget build(BuildContext context) {
    return Text(
      theText,
      textAlign: theAlignment,
      style: const TextStyle(
        color: AppColors.appColorBlack,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.1,
        wordSpacing: 0.1,
      ),
    );
  }
}
