part of 'search_book_cubit.dart';

@immutable
sealed class SearchBookState {}

final class SearchBookInitial extends SearchBookState {}

final class SearchBookLoading extends SearchBookState {}

final class SearchBookFailure extends SearchBookState {
  final String errorMessage;
  SearchBookFailure(this.errorMessage);
}

final class SearchBookSuccess extends SearchBookState {
  final List<BookModel> books;
  SearchBookSuccess(this.books);
}
