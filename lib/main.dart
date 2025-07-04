import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/views/notes_view.dart';
import 'constants.dart';
import 'models/note_model.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
   Hive.registerAdapter(NoteModelAdapter());
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
