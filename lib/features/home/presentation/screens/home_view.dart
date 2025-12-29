import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:romsis_book_discovery/core/container/di_container.dart';
import 'package:romsis_book_discovery/core/error/error.dart';
import 'package:romsis_book_discovery/core/result/result.dart';
import 'package:romsis_book_discovery/data/models/book_model.dart';
import 'package:romsis_book_discovery/data/repositories/book_repository.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final BookRepository _repository = locator<BookRepository>();

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  List<BookModel> _books = [];
  bool _isLoading = false;
  bool _isPaginationLoading = false;
  bool _hasReachedMax = false;
  String _query = '';
  int _startIndex = 0;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom &&
        !_isPaginationLoading &&
        !_hasReachedMax &&
        _query.isNotEmpty) {
      _loadBooks(isLoadMore: true);
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll - 200);
  }

  void _onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (value.trim().isEmpty) {
        setState(() {
          _query = '';
          _books.clear();
          _hasReachedMax = false;
        });
        return;
      }

      if (value != _query) {
        setState(() {
          _query = value;
          _startIndex = 0;
          _books.clear();
          _hasReachedMax = false;
        });
        _loadBooks(isLoadMore: false);
      }
    });
  }

  Future<void> _loadBooks({required bool isLoadMore}) async {
    if (isLoadMore) {
      setState(() {
        _isPaginationLoading = true;
      });
    } else {
      setState(() {
        _isLoading = true;
      });
    }

    final result = await _repository.searchAndGetBooks(_query, _startIndex);

    if (!mounted) return;

    result.when(
      success: (newBooks) {
        setState(() {
          if (isLoadMore) {
            _books.addAll(newBooks);
            _isPaginationLoading = false;
          } else {
            _books = newBooks;
            _isLoading = false;
          }

          _startIndex += 20;
          if (newBooks.length < 20) {
            _hasReachedMax = true;
          }
        });
      },
      failure: (failure) {
        setState(() {
          _isLoading = false;
          _isPaginationLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              failure.map(
                serverError: (e) => e.message,
                networkError: (_) => 'Bağlantı hatası',
                unknownError: (e) => e.message,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Romsis Books Search'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Kitap Ara...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                    _onSearchChanged('');
                  },
                ),
              ),
              onChanged: _onSearchChanged,
            ),
          ),

          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _books.isEmpty
                ? const Center(
                    child: Text('Kitap aramak için yazmaya başlayın.'),
                  )
                : ListView.separated(
                    controller: _scrollController,
                    itemCount: _hasReachedMax
                        ? _books.length
                        : _books.length + 1,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      if (index >= _books.length) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        );
                      }

                      final book = _books[index];
                      final volumeInfo = book.volumeInfo;
                      final thumbnail = volumeInfo.imageLinks?.smallThumbnail;

                      return ListTile(
                        leading: thumbnail != null
                            ? Image.network(
                                thumbnail,
                                width: 50,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.book),
                              )
                            : const Icon(Icons.book, size: 50),
                        title: Text(
                          volumeInfo.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          volumeInfo.authors?.join(', ') ?? 'Yazar Mevcut Değil',
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
