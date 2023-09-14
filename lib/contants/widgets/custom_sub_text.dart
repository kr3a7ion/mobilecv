import 'package:flutter/material.dart';
import 'package:mobilecv/contants/colors/app_colors.dart';

class CustomSubText extends StatelessWidget {
  const CustomSubText({
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
      style: TextStyle(
        color: AppColors.subTextColor,
        fontSize: 12,
        letterSpacing: 0.1,
        wordSpacing: 0.1,
      ),
    );
  }
}
