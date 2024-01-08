import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_gemy/constans.dart';
import 'package:notes_app_gemy/cubits/notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_gemy/models/note_model.dart';
import 'package:notes_app_gemy/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNotesCubit(),
        ),
       
      ],
    
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Cairo Play', brightness: Brightness.dark),
        home: const NotesView(),
      ),
    );
  }
}
