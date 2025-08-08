import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/models/note_model.dart';

import '../cubits/notes_cubit/notes_cubit.dart';
import 'custom_app_bar.dart';
import 'custom_textfeild.dart';

class EditBodyView extends StatefulWidget {
  const EditBodyView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditBodyView> createState() => _EditBodyViewState();
}

class _EditBodyViewState extends State<EditBodyView> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);

            },
          ),
          SizedBox(height: 24),
          CustomTextfeild(
              text: widget.note.title ,
              onChange: (value) {
                title = value;
              }),
          SizedBox(height: 24),
          CustomTextfeild(
              text: widget.note.subTitle,
              maxLines: 6,
              onChange: (value) {
                content = value;
              }),
        ],
      ),
    );
  }
}
