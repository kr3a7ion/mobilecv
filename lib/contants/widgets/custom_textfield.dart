import 'package:flutter/material.dart';
import 'package:mobilecv/contants/contant_value/cv_variables.dart';
import 'package:mobilecv/contants/widgets/custom_sub_text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.theLabel,
      required this.theInialValue,
      this.theMaxline = 1,
      this.theTopPaddin = 0,
      this.theInputType = TextInputType.text})
      : super(key: key);

  final String theLabel;
  final String theInialValue;
  final TextInputType theInputType;
  final int theMaxline;
  final double theTopPaddin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        keyboardType: theInputType,
        initialValue: theInialValue,
        maxLines: theMaxline,
        decoration: InputDecoration(
            label: CustomSubText(theText: theLabel),
            contentPadding: EdgeInsets.only(
                bottom: 5, left: 10, right: 15, top: theTopPaddin),
            hintText: theNameList[0],
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)))),
      ),
    );
  }
}
