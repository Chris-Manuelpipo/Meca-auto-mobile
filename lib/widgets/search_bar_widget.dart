import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String) onSearch;
  const SearchBarWidget({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 12,
            spreadRadius: 3,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        onChanged: onSearch,
        style: TextStyle(color: Colors.black, fontSize: 12),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.search),
          hintText: "Rechercher",
          hintStyle: TextStyle(color: Colors.black45),
        ),
      ),
    );
  }
}
