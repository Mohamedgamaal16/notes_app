import 'package:flutter/material.dart';
import 'package:notes_app_gemy/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final colorData = const [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Color(0xffFFCC80)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          if (index < colorData.length) {
           return NoteItem(colorData: colorData[index]);
          } else {
             index = 4; 
              return NoteItem(colorData: colorData[index]);
          }
        });
  }
}
