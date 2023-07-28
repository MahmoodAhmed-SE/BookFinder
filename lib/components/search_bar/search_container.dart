import 'package:bookfinder/components/search_bar/search_bar.dart';
import 'package:flutter/material.dart';


class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.deepPurpleAccent[400]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Center(
            child: Text("Search for a book!", style: TextStyle(fontSize: 20)),
          ),
          SearchBar(),
        ],
      ),
    );
  }
}