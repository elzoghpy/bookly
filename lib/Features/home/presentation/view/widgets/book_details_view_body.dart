// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/Features/home/presentation/view/widgets/custom_appbar_details_view.dart';
import 'package:bookly/Features/home/presentation/view/widgets/details_books.dart';
import 'package:bookly/Features/home/presentation/view/widgets/the_same_list_view_books.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBarDetailsView(),
              DetailsBooks(
                book: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 28,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'You can also like',
                  style: AppStyles.semibold18,
                ),
              ),
              const TheSameListViewBooks(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
