import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';
import '../../models/note_model.dart';

part 'add_note__state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)async{
    emit(AddNoteLoading());
    try {
      var  notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
     emit(AddNoteFailure(e.toString()));
    }
  }
}
