import 'package:bookly/constants/app_assets.dart';
import 'package:flutter/material.dart';

class CustomSerachFormFaild extends StatelessWidget {
  const CustomSerachFormFaild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBoder(),
        focusedBorder: buildOutlineInputBoder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .7,
            child: Image(
              image: AssetImage(Assets.imagesIcsearch),
              width: 24,
            ),
          ),
        ),
        hintStyle: TextStyle(
          fontSize: 18,
          color: Colors.white.withOpacity(.8),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBoder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12));
  }
}
