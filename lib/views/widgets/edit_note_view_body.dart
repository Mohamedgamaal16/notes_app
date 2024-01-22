import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_gemy/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_gemy/models/note_model.dart';
import 'package:notes_app_gemy/views/widgets/custom_app_bar.dart';
import 'package:notes_app_gemy/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomAppBar(
            onPressed: () {
              widget.note.title =title?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.of(context).pop();
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextfield(
          onChange: (value) {
            title = value;
          },
          hintname: 'title',
        ),
        CustomTextfield(
          onChange: (value) {
            content = value;
          },
          hintname: 'body',
          maxLines: 5,
        ),
      ],
    );
  }
}
