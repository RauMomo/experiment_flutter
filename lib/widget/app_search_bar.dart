import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.5),
        ),
        prefixIcon: Icon(Icons.search, color: Colors.black.withOpacity(0.5)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        filled: true,
        fillColor: const Color(0xFFD9D9D9).withOpacity(0.5),
      ),
    );
  }
}
