import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:romsis_book_discovery/core/container/di_container.dart';
import 'package:romsis_book_discovery/core/routes/app_router.dart';
import 'package:romsis_book_discovery/features/home/bloc/book_bloc.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return BlocProvider(
      create: (context) => locator<BookBloc>(),
      child: MaterialApp.router(
        title: 'Romsis Book Discovery',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}