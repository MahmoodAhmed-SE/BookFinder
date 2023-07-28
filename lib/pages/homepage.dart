import 'package:bookfinder/components/search_bar/search_container.dart';
import 'package:bookfinder/components/suggested_books/suggested_books.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SearchContainer(),
            SuggestedBooks(),
          ],
        ),
      ),
    );
  }
}
