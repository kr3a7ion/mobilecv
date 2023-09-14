import 'package:flutter/material.dart';
import 'package:mobilecv/contants/colors/app_colors.dart';

class CustomSubHeader extends StatelessWidget {
  const CustomSubHeader({
    Key? key,
    required this.theText,
    this.theColor = AppColors.subHeaderColor,
  }) : super(key: key);

  final String theText;
  final Color theColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      theText,
      style: TextStyle(
        fontSize: 14,
        color: theColor,
      ),
    );
  }
}
