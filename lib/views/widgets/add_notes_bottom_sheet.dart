import 'package:flutter/material.dart';
import 'package:notes_app_gemy/views/widgets/custom_button.dart';
import 'package:notes_app_gemy/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black38),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CustomTextfield(hintname: 'write title'),
            CustomTextfield(hintname: 'write subtitle'),
            const SizedBox(
              height: 100,
            ),
            CustomButton(buttonName: 'Add')
          ],
        ),
      ),
    );
  }
}
