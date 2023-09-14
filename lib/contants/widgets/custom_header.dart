import 'package:flutter/material.dart';
import 'package:mobilecv/contants/colors/app_colors.dart';

class LargeHeaderText extends StatelessWidget {
  const LargeHeaderText({
    Key? key,
    required this.theText,
  }) : super(key: key);
  final String theText;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        theText,
        overflow: TextOverflow.fade,
        style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w300,
            letterSpacing: 1,
            color: AppColors.headerColor),
      ),
    );
  }
}
