import 'package:flutter/material.dart';
import 'package:notes_app_gemy/constans.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatelessWidget {
  CustomTextfield(
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
      child: TextField(
        obscureText: obscureText,
        onChanged: onChange,
        decoration: InputDecoration(
          enabledBorder: buildBorder(),
          border: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor),
          hintText: hintname,
          hintStyle: const TextStyle(color: kPrimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
