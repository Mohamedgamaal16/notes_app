import 'package:flutter/material.dart';
import 'package:notes_app_gemy/views/widgets/custom_button.dart';
import 'package:notes_app_gemy/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(color: Colors.black38),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            CustomTextfield(hintname: 'write title'),
            CustomTextfield(hintname: 'write subtitle',maxLines: 5,),
            const SizedBox(
              height: 40,
            ),
            CustomButton(buttonName: 'Save',onTap: (){},)
          ],
        ),
      ),
    );
  }
}
