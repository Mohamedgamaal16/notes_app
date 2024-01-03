import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormfield extends StatelessWidget {
  CustomTextFormfield(
      {super.key,
      required this.hintname,
      this.onChange,
      this.obscureText = false});
  final String hintname;
  bool obscureText;
  Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
      child: TextFormField(
        obscureText: obscureText,
        validator: (data) {
          if (data!.isEmpty) {
            return 'reqiured';
          }
        },
        onChanged: onChange,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          hintText: hintname,
          hintStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
