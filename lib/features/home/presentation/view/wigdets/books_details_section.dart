import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.30),
          child: CustomBookImage(
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOnM46OOe4KY6wki7hElZs5Z_Oi_enbGDZKg&s',
          ),
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
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 37),
        BookAction(),
      ],
    );
  }
}
