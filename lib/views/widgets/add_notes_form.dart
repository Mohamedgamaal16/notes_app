import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_gemy/cubits/notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_gemy/models/note_model.dart';
import 'package:notes_app_gemy/views/widgets/custom_button.dart';

import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: ListView(
        children: [
          const SizedBox(height: 20),
          CustomTextfield(
            hintname: 'write title',
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextfield(
            hintname: 'write subtitle',
            maxLines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 40,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(

            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading? true : false ,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
