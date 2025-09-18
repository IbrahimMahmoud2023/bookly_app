import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.30),
          child: CustomBookImage(
            imageUrl:bookModel.volumeInfo.imageLinks.thumbnail.replaceFirst('http://', 'https://') ,
          ),
        ),
        SizedBox(height: 43),
        Text(
          bookModel.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors!.first,
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 16),
        BookRating(
            rating: bookModel.volumeInfo.averageRating,
            count: bookModel.volumeInfo.ratingsCount,
            mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 37),
        BookAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
