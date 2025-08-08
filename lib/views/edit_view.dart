import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widjets/custom_textfeild.dart';

import '../widjets/custom_app_bar.dart';
import '../widjets/edit_body_view.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditBodyView(note: note,),
    );
  }
}
