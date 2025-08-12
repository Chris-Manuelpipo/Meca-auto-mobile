import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String) onSearch;
  const SearchBarWidget({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45, // ↓ Hauteur réduite ici
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade50,
            blurRadius: 12,
            spreadRadius: 3,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        onChanged: onSearch,
        style: TextStyle(color: Colors.black, fontSize: 14),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 8,
          ), // ↓ Espace interne réduit
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.grey[100],
          filled: true,
          prefixIcon: Icon(Icons.search, size: 20), // ↓ Icône plus petite
          hintText: "Rechercher...",
          hintStyle: TextStyle(color: Colors.black45, fontSize: 13),
        ),
      ),
    );
  }
}
