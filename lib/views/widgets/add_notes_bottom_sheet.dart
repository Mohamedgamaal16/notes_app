import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_gemy/cubits/notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_gemy/views/widgets/add_notes_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Container(
        height: 400,
        decoration: const BoxDecoration(color: Colors.black38),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesFailure) {
            } else if (state is AddNotesSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return  AbsorbPointer(
              absorbing: state is AddNoteLoading?true : false,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal:8.0),
                child: AddNoteForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}
