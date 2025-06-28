import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild({super.key, required this.text,  this.maxLines =1});
final String text ;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.greenAccent,
      maxLines: maxLines,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(color: Colors.greenAccent),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
OutlineInputBorder BuildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Colors.white,
      width: 2,
    ),
  );
}
