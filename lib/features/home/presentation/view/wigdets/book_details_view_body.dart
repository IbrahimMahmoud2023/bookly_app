import 'package:bookely_app/core/utils/style.dart';
import 'package:bookely_app/features/home/presentation/view/wigdets/book_rating.dart';
import 'package:bookely_app/features/home/presentation/view/wigdets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.28),
              child: CustomBookImage(),
            ),
            SizedBox(height: 43),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 6),
            Opacity(
              opacity: 0.7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 16),
            // BookRating(),

          ],
        ),
      ),
    );
  }
}
