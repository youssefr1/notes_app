import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note__cubit.dart';
import 'add_note_form.dart';

class AddNoteButtom extends StatelessWidget {
  const AddNoteButtom({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade900,
      child:  BlocProvider(
  create: (context) => AddNoteCubit(),
  child: BlocConsumer<AddNoteCubit, AddNoteState>(
    listener: (context, state) {
      if(state is AddNoteFailure){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errmassage)));
      }
      if(state is AddNoteSuccess){
        Navigator.pop(context);
      }
    },
    builder: (context, state) {
      return AbsorbPointer(absorbing: state is AddNoteLoading ? true : false,
        child: Padding(
          padding:  EdgeInsets.only(right: 16,left: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const SingleChildScrollView(child: AddNoteForm()),
        ),
      );
    },
  ),
),
    );
  }
}

