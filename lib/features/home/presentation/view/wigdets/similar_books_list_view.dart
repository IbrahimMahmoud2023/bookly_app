import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOnM46OOe4KY6wki7hElZs5Z_Oi_enbGDZKg&s',
            ),
          );
        },
      ),
    );
  }
}