import 'package:bookly/constants/app_assets.dart';
import 'package:bookly/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 30, right: 33, top: 48, bottom: 46.9),
      child: Row(
        children: [
          const Image(
            image: AssetImage(Assets.imagesLogo),
            width: 85,
            height: 18,
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouter.KsearchView);
            },
            child: const Image(
              image: AssetImage(Assets.imagesIcsearch),
              width: 25,
            ),
          ),
        ],
      ),
    );
  }
}
