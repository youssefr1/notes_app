import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_note__state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
}
