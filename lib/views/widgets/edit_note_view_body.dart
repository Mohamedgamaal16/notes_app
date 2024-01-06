import 'package:flutter/material.dart';
import 'package:notes_app_gemy/views/widgets/custom_app_bar.dart';
import 'package:notes_app_gemy/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextfield(hintname: 'title'),
        CustomTextfield(
          hintname: 'body',
          maxLines: 5,
        ),
      ],
    );
  }
}
