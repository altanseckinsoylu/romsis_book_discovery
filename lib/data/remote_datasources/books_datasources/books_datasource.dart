import 'package:dio/dio.dart';
import 'package:romsis_book_discovery/core/constants/network_constants.dart';
import 'package:romsis_book_discovery/core/enums/api_paths_enum.dart';
import 'package:romsis_book_discovery/core/enums/dictionary_keys_enum.dart';
import 'package:romsis_book_discovery/core/error/error.dart';
import 'package:romsis_book_discovery/core/result/result.dart' hide Error;
import 'package:romsis_book_discovery/data/repositories/book_repository.dart';
import '../../../core/network/dio_client.dart';
import '../../models/book_model.dart';

class BookRepoImplemented implements BookRepository {
  final DioClient dioClient;

  BookRepoImplemented(this.dioClient);
  
  @override
  Future<Result<List<BookModel>>> searchAndGetBooks(String query, int startIndex) async {
    try {
      final response = await dioClient.get(
        ApiPathsEnum.getBooks.pathName,
        queryParameters: {
          DictionaryKeysEnum.query.keyName: query,
          DictionaryKeysEnum.startIndex.keyName: startIndex,
          DictionaryKeysEnum.maxResults.keyName: NetworkConstants.maxResults,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        if (data['items'] == null) {
          return const Result.success([]);
        }

        final books = (data['items'] as List)
            .map((e) => BookModel.fromJson(e))
            .toList();
            
        return Result.success(books);
      } else {
        return Result.failure(Failure.serverError(
          response.statusMessage ?? 'Server Error',
        ));
      }
    } on DioException catch (e) {
      return Result.failure(Failure.serverError(e.message ?? 'Dio Error'));
    } catch (e) {
      return Result.failure(Failure.unknownError(e.toString()));
    }
  }
}
