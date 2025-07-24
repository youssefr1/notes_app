import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';

import 'custom_notes_item.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes??[];
        return ListView.builder(
          itemCount:notes.length ,
          padding: EdgeInsets.symmetric(vertical: 16),
          itemBuilder:
              (context, index) =>
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: CustomNotesItem(),
              ),
        );
      },
    );
  }
}
