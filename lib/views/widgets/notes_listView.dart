import 'package:flutter/material.dart';
import 'package:notes_app_gemy/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_gemy/models/note_model.dart';
import 'package:notes_app_gemy/views/widgets/note_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount:notes.length ,
              itemBuilder: (context, index) {
                if (index < colorData.length) {
                  return NoteItem(colorData: colorData[index]);
                } else {
                  index = 4;
                  return NoteItem(colorData: colorData[index]);
                }
              }),
        );
      },
    );
  }
}
