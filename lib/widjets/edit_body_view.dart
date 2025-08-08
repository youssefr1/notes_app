import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widjets/colors_listVeiw.dart';

import '../constants.dart';
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
              maxLines: 8,
              onChange: (value) {
                content = value;
              }),
          SizedBox(height: 24),
          EditNotesColorsList(note: widget.note,)
        ],
      ),
    );
  }
}

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  @override
  late int currentIndex;
  void initState() {
    currentIndex=ColorsList.indexOf(Color(widget.note.color));
    super.initState();
  }
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          scrollDirection:Axis.horizontal ,
          itemCount: ColorsList.length,itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: GestureDetector(
              onTap:(){
                currentIndex=index;
                widget.note.color=ColorsList[index].value;
                setState(() {

                });
              } ,
              child: ColorItem(isActive:  currentIndex==index, color: ColorsList[index],)),
        );
      }),
    );;
  }
}

