import 'package:flutter_bloc/flutter_bloc.dart';
part 'add_notes_states.dart';
class NotesCubit extends Cubit<AddNotesState> {
  NotesCubit() : super(AddNotesInitial());
}