import 'package:bookly/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/view/widgets/cutom_book_image.dart';
import 'package:bookly/constants/constants.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksSeller extends StatelessWidget {
  const BooksSeller({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KhomeDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImgae(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .55,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: AppStyles.regular20
                          .copyWith(fontFamily: KGTSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3.1,
                  ),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      bookModel.volumeInfo.authors![0],
                      style: AppStyles.medium16.copyWith(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 3.1,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Free',
                        style: AppStyles.bold20,
                      ),
                      const Spacer(),
                      BookRating(
                        rating:
                            bookModel.volumeInfo.averageRating?.round() ?? 1,
                        count: bookModel.volumeInfo.ratingsCount ?? 1,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
