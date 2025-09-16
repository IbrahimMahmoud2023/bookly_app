import 'package:bookely_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBooksState> {
  FeaturedBookCubit() : super(FeaturedBooksInitial());
}
