import 'package:flutter/material.dart';
import 'package:jck/presentation/%08main/widget/textfiled/search_textfiled.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(24, 74, 24, 56),
        child: Column(
          spacing: 40,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "JCK 요약",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                ),
                Card(
                  color: Colors.black,
                  child: Column(
                    spacing: 10,
                    children: [
                      Row(spacing: 5, children: [
                      
                        ],
                      ),
                      Row(spacing: 5, children: [Text("123S")]),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
