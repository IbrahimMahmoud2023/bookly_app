import 'package:bookely_app/features/home/presentation/view/wigdets/similar_books_section.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(child: SizedBox(height: 40)),
                const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
