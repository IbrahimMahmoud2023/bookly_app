import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../search/data/repos/search_repo.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  final HomeRepo homeRepo;
  final SearchRepo searchRepo;
  SearchBookCubit(this.homeRepo, this.searchRepo) : super(SearchBookInitial());

  Future<void> fetchInitialBooks() async {
    emit(SearchBookLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(SearchBookFailure(failure.errorMessage)),
      (books) => emit(SearchBookSuccess(books)),
    );
  }

  Future<void> fetchSearchBooks(String query) async {
    if (query.trim().isEmpty) {
      fetchInitialBooks();
      return;
    }

    emit(SearchBookLoading());
    var result = await searchRepo.fetchSearchBooks(query: query);
    result.fold(
          (failure) {
        debugPrint('Search Error: ${failure.errorMessage}');
        emit(SearchBookFailure(failure.errorMessage));
      },
          (books) {
        debugPrint('Search Result Count: ${books.length}');
        emit(SearchBookSuccess(books));
      },
    );
  }
}
