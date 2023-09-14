import 'package:flutter/material.dart';
import 'package:mobilecv/contants/colors/app_colors.dart';
import 'package:mobilecv/contants/contant_value/spacers.dart';

class CustomIconTextRow extends StatelessWidget {
  const CustomIconTextRow({
    Key? key,
    required this.theIcon,
    required this.theText,
  }) : super(key: key);
  final Widget theIcon;
  final String theText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.appColorBlack,
            ),
            child: Padding(padding: const EdgeInsets.all(3), child: theIcon),
          ),
          kSpacerWidth8,
          Flexible(
            child: Text(
              theText,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: AppColors.subTextColor, fontSize: 11),
            ),
          )
        ],
      ),
    );
  }
}
