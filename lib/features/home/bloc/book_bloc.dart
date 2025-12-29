import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:romsis_book_discovery/core/constants/network_constants.dart';
import 'package:romsis_book_discovery/core/error/error.dart';
import 'package:romsis_book_discovery/core/result/result.dart';
import 'package:romsis_book_discovery/data/repositories/book_repository.dart';
import 'package:stream_transform/stream_transform.dart';
import 'book_event.dart';
import 'book_state.dart';

EventTransformer<E> _debounce<E>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class BookBloc extends Bloc<BookEvent, BookState> {
  final BookRepository repository;

  BookBloc(this.repository) : super(const BookState()) {
    on<SearchQueryChanged>(
      _onSearchQueryChanged,
      transformer: _debounce(const Duration(milliseconds: 300)),
    );

    on<LoadMoreBooks>(_onLoadMoreBooks);
  }

  Future<void> _onSearchQueryChanged(
    SearchQueryChanged event,
    Emitter<BookState> emit,
  ) async {
    if (event.query.isEmpty) {
      emit(const BookState(status: BookStatus.initial));
      return;
    }

    emit(state.copyWith(
      status: BookStatus.loading,
      query: event.query,
      startIndex: 0,
      books: [],
      hasReachedMax: false,
      errorMessage: '',
    ));

    final result = await repository.searchAndGetBooks(event.query, 0);

    result.when(
      success: (books) {
        emit(state.copyWith(
          status: BookStatus.success,
          books: books,
          startIndex:  NetworkConstants.maxResults,
          hasReachedMax: books.length <  NetworkConstants.maxResults,
        ));
      },
      failure: (failure) {
        emit(state.copyWith(
          status: BookStatus.failure,
          errorMessage: failure.map(
            serverError: (e) => e.message,
            networkError: (_) => 'Bağlantı hatası',
            unknownError: (e) => e.message,
          ),
        ));
      },
    );
  }

  Future<void> _onLoadMoreBooks(
    LoadMoreBooks event,
    Emitter<BookState> emit,
  ) async {
    if (state.isPaginationLoading || state.hasReachedMax) return;

    emit(state.copyWith(isPaginationLoading: true));

    final result = await repository.searchAndGetBooks(
      state.query,
      state.startIndex,
    );

    result.when(
      success: (newBooks) {
        emit(state.copyWith(
          isPaginationLoading: false,
          books: List.of(state.books)..addAll(newBooks),
          startIndex: state.startIndex +  NetworkConstants.maxResults,
          hasReachedMax: newBooks.isEmpty,
        ));
      },
      failure: (failure) {
        emit(state.copyWith(
          isPaginationLoading: false,
          errorMessage: 'Daha fazla yüklenemedi',
        ));
      },
    );
  }
}