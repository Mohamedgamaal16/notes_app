import 'package:flutter/material.dart';
import 'package:notes_app_gemy/views/widgets/custom_button.dart';
import 'package:notes_app_gemy/views/widgets/custom_text_field.dart';
import 'package:notes_app_gemy/views/widgets/notes_views_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}

