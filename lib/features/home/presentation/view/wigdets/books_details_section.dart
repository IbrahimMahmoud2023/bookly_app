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

    final imageUrl = bookModel.volumeInfo.imageLinks?.thumbnail != null
        ? bookModel.volumeInfo.imageLinks!.thumbnail.replaceFirst('http://', 'https://')
        : 'https://www.google.com/imgres?q=images%20&imgurl=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1593696954577-ab3d39317b97%3Ffm%3Djpg%26q%3D60%26w%3D3000%26ixlib%3Drb-4.1.0%26ixid%3DM3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZyZWUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%253D&imgrefurl=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Ffree-images&docid=rSJymaiqlIbilM&tbnid=iacwDkTiP3TDPM&vet=12ahUKEwjmsPT4y-WPAxXnQ6QEHaBFGegQM3oECBkQAA..i&w=3000&h=4020&hcb=2&ved=2ahUKEwjmsPT4y-WPAxXnQ6QEHaBFGegQM3oECBkQAA';

    final title = bookModel.volumeInfo.title ?? 'No title available';

    final author = (bookModel.volumeInfo.authors != null &&
        bookModel.volumeInfo.authors!.isNotEmpty)
        ? bookModel.volumeInfo.authors!.first
        : 'Unknown Author';

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.30),
          child: CustomBookImage(imageUrl: imageUrl),
        ),
        const SizedBox(height: 43),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            author,
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 16),
        BookRating(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        BookAction(bookModel: bookModel),
      ],
    );
  }
}

