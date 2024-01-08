import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_gemy/cubits/notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_gemy/views/widgets/add_notes_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(color: Colors.black38),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNoteLoading) {
              isLoading = true;
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: isLoading, child: const AddNoteForm());
          },
        ),
      ),
    );
  }
}
