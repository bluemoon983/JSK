import 'package:flutter/material.dart';
import 'package:jck/presentation/%08main/home_page.screen.dart';

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
