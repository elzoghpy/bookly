import 'package:bookly/Features/search/presentation/views/widgets/custom_search_form_faild.dart';
import 'package:bookly/Features/search/presentation/views/widgets/list_view_book_search.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSerachFormFaild(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Search Result',
                style: AppStyles.semibold18,
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(child: ListViewBooksItem())
            ],
          ),
        ),
      ),
    );
  }
}
