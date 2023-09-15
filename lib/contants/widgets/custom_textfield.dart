// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mobilecv/contants/contant_value/cv_variables.dart';
import 'package:mobilecv/contants/widgets/custom_sub_text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.theLabel,

    this.theInputType = TextInputType.text,
    this.theMaxline = 1,
    this.theTopPadding = 0,
    required this.theController,
    required this.theEditorCompleted,
  }) : super(key: key);

  final String theLabel;
  final TextInputType theInputType;
  final int theMaxline;
  final double theTopPadding;
  final TextEditingController theController;
  final Function(String) theEditorCompleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: theController,
        keyboardType: theInputType,

        onSubmitted: theEditorCompleted,
        
        maxLines: theMaxline,
        decoration: InputDecoration(
            label: CustomSubText(theText: theLabel),
            contentPadding: EdgeInsets.only(
                bottom: 5, left: 10, right: 15, top: theTopPadding),
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
