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
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter text',
          ),
        ),
      ),
    );
  }
}
