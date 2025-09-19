import 'package:bookely_app/core/errors/failures.dart';
import 'package:bookely_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookely_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_services.dart';

class SearchRepoImpl implements SearchRepo {
  ApiServices apiServices;
  SearchRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({
    required String query,
  }) async {
    try {
      var data = await apiServices.get(
        endPoint:
        'volumes?q=$query&filter=free-ebooks&orderBy=relevance&maxResults=20',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

}

