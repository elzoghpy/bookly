import 'package:bookly/Features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/view/widgets/features_books_list_view.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FearuresBooksLisView(),
              SizedBox(
                height: 51,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Newest Books',
                  style: AppStyles.semibold18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListViewItem(),
        )
      ],
    );
  }
}
