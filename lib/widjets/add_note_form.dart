import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/models/note_model.dart';

import '../cubits/add_note_cubit/add_note__cubit.dart';
import 'custom_buttom.dart';
import 'custom_textfeild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>();
  AutovalidateMode autoValidateMode =
      AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 8),
          CustomTextfeild(
            text: 'title',
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextfeild(
            text: 'Content',
            maxLines: 7,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 95),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButtom(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var note = NoteModel(
                        title: title!,
                        subTitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.greenAccent.value);
                    BlocProvider.of<AddNoteCubit>(context)
                        .addNote(note);
                  } else {
                    autoValidateMode =
                        AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
