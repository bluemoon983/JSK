import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const SearchTextField({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: "플레이어 검색",
        hintStyle: const TextStyle(
          color: Color(0xFF5C5C66), // 회색 톤
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            ".JCK",
            style: TextStyle(
              color: const Color.fromARGB(255, 245, 16, 0),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
