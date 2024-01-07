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
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: AddNoteForm(),
      ),
    );
  }
}

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
          CustomButton(
            buttonName: 'Save',
            onTap: () {
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          )
        ],
      ),
    );
  }
}
