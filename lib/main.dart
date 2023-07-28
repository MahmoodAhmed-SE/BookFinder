import 'package:bookfinder/provider/books_provider.dart';
import 'package:flutter/material.dart';
import 'package:bookfinder/pages/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BooksProvider(),
        )
      ],
      child: const BookFinderApp(),
    ),
  );
}

class BookFinderApp extends StatelessWidget {
  const BookFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BookFinder",
      home: Homepage(),
    );
  }
}
