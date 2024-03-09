import 'package:bookly/constants/constants.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundcolor,
      required this.textcolor,
      this.borderRadius,
      required this.text,
      this.onPressed});
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(12))),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppStyles.bold20
                .copyWith(color: textcolor, fontFamily: KGilroy),
          )),
    );
  }
}
