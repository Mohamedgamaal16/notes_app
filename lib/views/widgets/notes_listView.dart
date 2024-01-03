import 'package:flutter/material.dart';
import 'package:notes_app_gemy/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 15 ,itemBuilder: (context, index) {
      return const NoteItem();
    });
  }
}
