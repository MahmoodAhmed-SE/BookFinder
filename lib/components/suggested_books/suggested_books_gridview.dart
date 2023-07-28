import 'dart:convert';

import 'package:bookfinder/models/suggested_book_model.dart';
import 'package:bookfinder/provider/books_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class SuggestedBooksGridView extends StatefulWidget {
  const SuggestedBooksGridView({super.key});

  @override
  State<SuggestedBooksGridView> createState() => _SuggestedBooksGridViewState();
}

class _SuggestedBooksGridViewState extends State<SuggestedBooksGridView> {
  SuggestedBookModel? computerSubject;
  @override
  void initState() {
    super.initState();
    fetchSuggestedBooks().then(
      (value) {
        computerSubject = value;
        Provider.of<BooksProvider>(context, listen: false).setSuggestedBooks(computerSubject!.works);
      },
    );
  }
  

  Future<SuggestedBookModel> fetchSuggestedBooks() async {
    final response = await http
        .get(Uri.parse('http://openlibrary.org/subjects/computer.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return SuggestedBookModel.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load book');
    }
  }

  @override
  Widget build(BuildContext context) {
    var w = Provider.of<BooksProvider>(context, listen: false).suggestedBooks;
    return GridView.count(
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      crossAxisCount: 2,
      childAspectRatio: 2 / 1.5,
      children: List<Container>.generate(4, (index) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              TextButton(child: Text("press"), onPressed: () {
                print(w);
              },),
              const Positioned(
                top: 0,
                left: 0,
                child: Text("image"),
              ),
              Column(
                children: const [
                  Text("title"),
                  Text("Genre"),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
