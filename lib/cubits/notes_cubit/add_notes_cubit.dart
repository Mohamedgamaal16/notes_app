import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_gemy/constans.dart';
import 'package:notes_app_gemy/models/note_model.dart';
part 'add_notes_states.dart';
class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  

  addNote(NoteModel note) async{
emit(AddNoteLoading());
try{ 
  var notesBox = Hive.box<NoteModel>(kNotesBox);
  emit(AddNotesSuccess());
  await notesBox.add(note);
}catch(e){
  AddNotesFailure(e.toString());
}
  } 
}