import 'package:flutter/material.dart';
import 'package:jck/widget/textfiled/search_textfiled.dart';

void main() {
  runApp(const JSKApp());
}

class JSKApp extends StatelessWidget {
  const JSKApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSK App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(24, 74, 24, 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SearchTextField()],
        ),
      ),
    );
  }
}
