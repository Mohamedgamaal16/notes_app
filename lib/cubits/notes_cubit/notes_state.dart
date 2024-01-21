part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNotesSuccess extends NotesState {
  final List<NoteModel> notes ;

  AddNotesSuccess(this.notes);
}

class AddNotesFailure extends NotesState {
  final String errmsg;

  AddNotesFailure(this.errmsg);
}
