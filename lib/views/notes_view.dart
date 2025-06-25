import 'package:flutter/material.dart';
import 'package:notesapp/widjets/add_note_buttom.dart';
import 'package:notesapp/widjets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        onPressed: () {
          showModalBottomSheet(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ) ,
            context: context,
            builder: (context) {
              return AddNoteButtom();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
