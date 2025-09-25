import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final String time; // 경기 시간
  final VoidCallback? onTap; // 카드 클릭 시 동작

  const MatchCard({super.key, required this.time, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // 클릭 가능하게
      child: Card(
        color: const Color(0xFF2B2B34),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            spacing: 35,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 시간
              Text(
                time,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              Row(
                spacing: 40,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Blue",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      "VS",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Red",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
