import 'package:flutter/material.dart';
import 'package:mobilecv/contants/contant_value/cv_variables.dart';

class CustomCirclerImage extends StatelessWidget {
  const CustomCirclerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: Card(
        elevation: 3,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: const BorderSide(
              width: 3,
              color: Colors.white,
            )),
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage(cvProfileImage),
        ),
      ),
    );
  }
}
