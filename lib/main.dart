import 'package:flutter/material.dart';

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
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(child: const Text('Welcome to JSK App!')),
    );
  }
}
