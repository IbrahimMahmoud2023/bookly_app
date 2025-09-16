import 'package:bookely_app/core/errors/failures.dart';
import 'package:bookely_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}

// dartz => ديه package قويه جدا بتخليني اقدر اقدر ارجع اكتر من حاجه في ال method
