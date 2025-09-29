import 'package:flutter/material.dart';

class BanPickCard extends StatelessWidget {
  final int order;
  final String imageUrl;
  final String championName;
  final int count;

  const BanPickCard({
    super.key,
    required this.order,
    required this.imageUrl,
    required this.championName,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 100,
      child: Card(
        color: const Color(0xFF2B2B34),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 10,
                children: [
                  Text(
                    order.toString(),
                    style: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      imageUrl,
                      width: 60,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    championName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
              Text(
                count.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
