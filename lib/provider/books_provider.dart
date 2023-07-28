import 'package:bookfinder/models/suggested_book_model.dart';
import 'package:flutter/material.dart';

class BooksProvider extends ChangeNotifier {
  List<Works>? _suggestedBooks;
  List<Works>? get suggestedBooks => _suggestedBooks;

  void setSuggestedBooks(List<Works>? books) {
    if (books != null) {
      _suggestedBooks = books;
      notifyListeners();
    }
  }
}
