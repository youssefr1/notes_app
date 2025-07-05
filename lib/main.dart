import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note__cubit.dart';
import 'package:notesapp/simple_bloc_observer.dart';
import 'package:notesapp/views/notes_view.dart';
import 'constants.dart';
import 'models/note_model.dart';

void main() async {

  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
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
