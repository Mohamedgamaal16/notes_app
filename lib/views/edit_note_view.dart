import 'package:flutter/material.dart';
import 'package:notes_app_gemy/models/note_model.dart';
import 'package:notes_app_gemy/views/widgets/custom_app_bar.dart';
import 'package:notes_app_gemy/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  static String id = 'EditNotesView';
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteViewBody(note: note,),
    );
  }
}
