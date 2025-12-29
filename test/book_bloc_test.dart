import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:romsis_book_discovery/core/constants/network_constants.dart';
import 'package:romsis_book_discovery/core/error/error.dart';
import 'package:romsis_book_discovery/core/result/result.dart';
import 'package:romsis_book_discovery/data/models/book_model.dart';
import 'package:romsis_book_discovery/data/repositories/book_repository.dart';
import 'package:romsis_book_discovery/features/home/bloc/book_bloc.dart';
import 'package:romsis_book_discovery/features/home/bloc/book_event.dart';
import 'package:romsis_book_discovery/features/home/bloc/book_state.dart';

class MockBookRepository extends Mock implements BookRepository {}

void main() {
  late MockBookRepository mockBookRepository;
  late BookBloc bookBloc;

  final tBook = BookModel(
    id: '1',
    volumeInfo: VolumeInfo(title: 'Test Kitabı', authors: ['Test Yazar']),
  );
  final tBookList = [tBook];

  setUp(() {
    mockBookRepository = MockBookRepository();
    bookBloc = BookBloc(mockBookRepository);
  });

  tearDown(() {
    bookBloc.close();
  });

  group('BookBloc Tests', () {
    test('initial state is correct', () {
      expect(bookBloc.state, const BookState(status: BookStatus.initial));
    });

    blocTest<BookBloc, BookState>(
      'Arama yapıldığında önce loading sonra success ve kitap listesi dönmeli',
      build: () {
        when(() => mockBookRepository.searchAndGetBooks(any(), any()))
            .thenAnswer((_) async => Result.success(tBookList));
        return bookBloc;
      },
      wait: const Duration(milliseconds: 500),
      act: (bloc) => bloc.add(const SearchQueryChanged('Harry Potter')),
      expect: () => [
        const BookState(
          status: BookStatus.loading,
          query: 'Harry Potter',
          startIndex: 0,
          books: [],
        ),
        BookState(
          status: BookStatus.success,
          books: tBookList,
          startIndex: NetworkConstants.maxResults,
          query: 'Harry Potter',
          hasReachedMax: false,
        ),
      ],
      verify: (_) {
        verify(() => mockBookRepository.searchAndGetBooks('Harry Potter', 0)).called(1);
      },
    );

    blocTest<BookBloc, BookState>(
      'Arama sırasında hata oluşursa failure state dönmeli',
      build: () {
        when(() => mockBookRepository.searchAndGetBooks(any(), any()))
            .thenAnswer((_) async => const Result.failure(Failure.serverError('Server Hatası')));
        return bookBloc;
      },
      wait: const Duration(milliseconds: 500),
      act: (bloc) => bloc.add(const SearchQueryChanged('Hata')),
      expect: () => [
        const BookState(
          status: BookStatus.loading,
          query: 'Hata',
          startIndex: 0,
          books: [],
        ),
        const BookState(
          status: BookStatus.failure,
          query: 'Hata',
          errorMessage: 'Server Hatası',
          books: [],
        ),
      ],
    );
    blocTest<BookBloc, BookState>(
      'LoadMoreBooks tetiklendiğinde yeni veriler listeye eklenmeli',
      build: () {
        when(() => mockBookRepository.searchAndGetBooks(any(), any()))
            .thenAnswer((_) async => Result.success(tBookList));
        return bookBloc;
      },
      seed: () => BookState(
        status: BookStatus.success,
        books: tBookList,
        startIndex: 20,
        query: 'Test',
      ),
      act: (bloc) => bloc.add(const LoadMoreBooks()),
      expect: () => [
        BookState(
          status: BookStatus.success,
          books: tBookList,
          startIndex: 20,
          query: 'Test',
          isPaginationLoading: true,
        ),
        BookState(
          status: BookStatus.success,
          books: [...tBookList, ...tBookList],
          startIndex: 20 + NetworkConstants.maxResults,
          query: 'Test',
          isPaginationLoading: false,
          hasReachedMax: false,
        ),
      ],
    );
    blocTest<BookBloc, BookState>(
      'LoadMoreBooks sırasında hata olursa mevcut liste korunmalı, hata mesajı gösterilmeli',
      build: () {
        when(() => mockBookRepository.searchAndGetBooks(any(), any()))
            .thenAnswer((_) async => const Result.failure(Failure.networkError()));
        return bookBloc;
      },
      seed: () => BookState(
        status: BookStatus.success,
        books: tBookList,
        query: 'Test',
      ),
      act: (bloc) => bloc.add(const LoadMoreBooks()),
      expect: () => [
        BookState(
          status: BookStatus.success,
          books: tBookList,
          query: 'Test',
          isPaginationLoading: true,
        ),
        BookState(
          status: BookStatus.success,
          books: tBookList,
          query: 'Test',
          isPaginationLoading: false,
          errorMessage: 'Daha fazla yüklenemedi',
        ),
      ],
    );
  });
}