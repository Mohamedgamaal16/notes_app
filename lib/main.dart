import 'package:flutter/material.dart';
import 'package:notes_app_gemy/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo Play', brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
