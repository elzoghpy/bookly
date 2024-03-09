// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/view/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/view/widgets/cutom_book_image.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DetailsBooks extends StatelessWidget {
  const DetailsBooks({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .28),
              child: CustomBookImgae(
                imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
              )),
          const SizedBox(
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              book.volumeInfo.title!,
              style: AppStyles.regular30,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              book.volumeInfo.authors![0],
              style: AppStyles.medium16
                  .copyWith(fontSize: 18, fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Align(
              child: BookRating(
            rating: book.volumeInfo.averageRating?.round() ?? 1,
            count: book.volumeInfo.ratingsCount ?? 1,
          )),
          const SizedBox(
            height: 3,
          ),
          BooksAction(
            bookModel: book,
          ),
        ],
      ),
    );
  }
}
