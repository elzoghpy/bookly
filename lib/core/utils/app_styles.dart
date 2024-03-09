import 'package:bookly/constants/constants.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const bold20 = TextStyle(fontSize: 20, fontWeight: FontWeight.w900);
  static const bold16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: KGilroy);

  static const semibold18 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, fontFamily: KGTSectraFine);
  static const regular30 = TextStyle(
      fontSize: 30, fontWeight: FontWeight.w600, fontFamily: KGTSectraFine);

  static const regular20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const regular14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w400);

  static const medium16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
}
