import 'package:bookfinder/components/suggested_books/suggested_books_gridview.dart';
import 'package:flutter/material.dart';

class SuggestedBooks extends StatelessWidget {
  const SuggestedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      padding: const EdgeInsets.all(10),
      child: const SuggestedBooksGridView(),
    );
  }
}
