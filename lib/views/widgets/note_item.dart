import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_gemy/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_gemy/models/note_model.dart';
import 'package:notes_app_gemy/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return  EditNoteView(note: note,);
          }));
        },
        child: Container(
          padding:
              const EdgeInsets.only(left: 16, top: 24, bottom: 24, right: 24),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                  child: Text(
                    note.subTitle,
                    style: const TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    )),
              ),
              Text(
                note.date,
                style: const TextStyle(color: Colors.black54, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
