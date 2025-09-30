import 'package:flutter/material.dart';

class SearchResultPage extends StatelessWidget {
  final String query; // 검색어 받기

  const SearchResultPage({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1F),
      appBar: AppBar(
        title: Text("'$query' 검색 결과"),
        backgroundColor: const Color(0xFF31313C),
      ),
      body: Center(
        child: Text(
          "검색어: $query",
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
