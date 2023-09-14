import 'package:flutter/material.dart';
import 'package:mobilecv/contants/colors/app_colors.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    this.theColor = AppColors.backgroundColorWhite,
  }) : super(key: key);

  final Color theColor;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: theColor,
      thickness: 1,
    );
  }
}
