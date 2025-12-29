import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:romsis_book_discovery/core/network/dio_client.dart';
import 'package:romsis_book_discovery/data/remote_datasources/books_datasources/books_datasource.dart';
import 'package:romsis_book_discovery/data/repositories/book_repository.dart';
import 'package:romsis_book_discovery/features/home/bloc/book_bloc.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<Dio>(() => Dio());
  locator.registerLazySingleton<DioClient>(
    () => DioClient(locator()),
  );
  locator.registerLazySingleton<BookRepository>(
    () => BookRepoImplemented(locator()),
  );
  locator.registerFactory(
    () => BookBloc(locator()),
  );
}