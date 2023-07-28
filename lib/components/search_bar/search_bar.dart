import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});
  void querySearch(String query) {
    print(query);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController searchText = TextEditingController();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 300,
          height: 50,
          child: TextField(
            controller: searchText,
            autocorrect: true,
          ),
        ),
        SizedBox(
          height: 50,
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              querySearch(searchText.value.text);
            },
          ),
        )
      ],
    );
  }
}
