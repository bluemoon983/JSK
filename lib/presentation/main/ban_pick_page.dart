import 'package:flutter/material.dart';

class BanPickPage extends StatelessWidget {
  const BanPickPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1F),

      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('챔피언 순위', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1C1C1F),
      ),
    );
  }
}
