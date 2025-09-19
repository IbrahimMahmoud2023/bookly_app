import 'package:bookely_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookely_app/features/home/presentation/view/wigdets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/similar_books_cubit/similar_books_cubit.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final categories = widget.bookModel.volumeInfo.categories;
      final category = (categories != null && categories.isNotEmpty)
          ? categories[0]
          : 'general';

      context.read<SimilarBooksCubit>().fetchSimilarBooks(category: category);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
