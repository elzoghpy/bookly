import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});

  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        color: Colors.deepOrange,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: Text(
              errMessage,
              style: AppStyles.semibold18,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
