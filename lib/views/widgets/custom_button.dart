import 'package:flutter/material.dart';
import 'package:notes_app_gemy/constans.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   CustomButton({  this.onTap, required this.buttonName});
  final String buttonName;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(
            buttonName,
            style: const TextStyle(
              fontSize: 16,color: Colors.black
            ),
          ),
        ),
      ),
    );
  }
}
