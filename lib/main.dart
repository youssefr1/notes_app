import 'package:flutter/material.dart';
import 'package:notesapp/views/edit_view.dart';
import 'package:notesapp/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade900,
        fontFamily: 'Poppins',
      ),
      home: NotesView(),
    );
  }
}
