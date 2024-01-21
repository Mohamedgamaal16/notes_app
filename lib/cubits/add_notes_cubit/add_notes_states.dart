part of 'add_notes_cubit.dart';

abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNoteLoading extends AddNotesState {}

class AddNotesSuccess extends AddNotesState {}

class AddNotesFailure extends AddNotesState {
  final String errmsg;

  AddNotesFailure(this.errmsg);
}
