import 'package:flutter/material.dart';
import 'package:notes_app_gemy/views/widgets/custom_app_bar.dart';
import 'package:notes_app_gemy/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNotesView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
