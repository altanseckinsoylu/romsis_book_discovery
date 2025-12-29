import 'package:romsis_book_discovery/core/result/result.dart';
import 'package:romsis_book_discovery/data/models/book_model.dart';

abstract class BookRepository {
  Future<Result<List<BookModel>>> searchAndGetBooks(String query, int startIndex);
}