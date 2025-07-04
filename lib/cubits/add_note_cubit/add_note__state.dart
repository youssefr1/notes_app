part of 'add_note__cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}
final class AddNoteLoading extends AddNoteState {}
final class AddNoteSuccess extends AddNoteState {}
final class AddNoteFailure extends AddNoteState {
  final String errmassage;

  AddNoteFailure(this.errmassage);
}

