import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:romsis_book_discovery/features/home/bloc/book_bloc.dart';
import 'package:romsis_book_discovery/features/home/bloc/book_event.dart';
import 'package:romsis_book_discovery/features/home/bloc/book_state.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<BookBloc>().add(const LoadMoreBooks());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll - 200);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Romsis Books Search')),
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
                    context.read<BookBloc>().add(const SearchQueryChanged(''));
                  },
                ),
              ),
              onChanged: (value) {
                context.read<BookBloc>().add(SearchQueryChanged(value));
              },
            ),
          ),

          Expanded(
            child: BlocBuilder<BookBloc, BookState>(
              builder: (context, state) {
                if (state.status == BookStatus.loading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.status == BookStatus.failure && state.books.isEmpty) {
                  return Center(child: Text(state.errorMessage));
                }

                if (state.status == BookStatus.success && state.books.isEmpty) {
                  if (state.query.isNotEmpty) {
                    return const Center(child: Text('Sonuç bulunamadı.'));
                  }
                  return const Center(
                    child: Text('Arama yapmak için bir şeyler yazın.'),
                  );
                }

                if (state.status == BookStatus.initial) {
                  return const Center(child: Text('Kitap aramak için yazın.'));
                }

                return ListView.separated(
                  controller: _scrollController,
                  itemCount: state.hasReachedMax
                      ? state.books.length
                      : state.books.length + 1,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    if (index >= state.books.length) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      );
                    }

                    final book = state.books[index];
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
