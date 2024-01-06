import 'package:flutter/material.dart';
import 'package:notes_app_gemy/constans.dart';
import 'package:notes_app_gemy/views/widgets/add_notes_bottom_sheet.dart';
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
              barrierColor: Colors.white24,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        shape: const CircleBorder(),
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add,color: Colors.black,),
      ),
      body: const NotesViewBody(),
    );
  }
}
