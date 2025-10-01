import 'package:flutter/material.dart';

class SearchResultPage extends StatelessWidget {
  final String query; // 검색어 받기

  const SearchResultPage({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1C1F),

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(54, 14, 24, 56),
        child: Text(
          "김준혁",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
