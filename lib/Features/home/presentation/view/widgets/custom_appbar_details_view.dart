import 'package:bookly/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarDetailsView extends StatelessWidget {
  const CustomAppBarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 8),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.KhomeView);
            },
            icon: const Icon(
              Icons.close,
              size: 34,
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 32,
              )),
        ],
      ),
    );
  }
}
