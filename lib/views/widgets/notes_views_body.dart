import 'package:flutter/material.dart';
import 'package:notes_app_gemy/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal:16.0),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar(),
        ],
      ),
    );
  }
}
