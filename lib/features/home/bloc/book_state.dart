import 'package:equatable/equatable.dart';
import 'package:romsis_book_discovery/data/models/book_model.dart';

enum BookStatus { initial, loading, success, failure }

class BookState extends Equatable {
  final BookStatus status;
  final List<BookModel> books;
  final bool hasReachedMax;
  final String errorMessage;
  final String query;
  final int startIndex;
  final bool isPaginationLoading;

  const BookState({
    this.status = BookStatus.initial,
    this.books = const <BookModel>[],
    this.hasReachedMax = false,
    this.errorMessage = '',
    this.query = '',
    this.startIndex = 0,
    this.isPaginationLoading = false,
  });

  BookState copyWith({
    BookStatus? status,
    List<BookModel>? books,
    bool? hasReachedMax,
    String? errorMessage,
    String? query,
    int? startIndex,
    bool? isPaginationLoading,
  }) {
    return BookState(
      status: status ?? this.status,
      books: books ?? this.books,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      errorMessage: errorMessage ?? this.errorMessage,
      query: query ?? this.query,
      startIndex: startIndex ?? this.startIndex,
      isPaginationLoading: isPaginationLoading ?? this.isPaginationLoading,
    );
  }

  @override
  List<Object?> get props => [
        status,
        books,
        hasReachedMax,
        errorMessage,
        query,
        startIndex,
        isPaginationLoading,
      ];
}