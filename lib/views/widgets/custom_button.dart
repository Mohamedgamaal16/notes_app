import 'package:flutter/material.dart';
import 'package:notes_app_gemy/constans.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   const CustomButton({super.key,   this.onTap, required this.buttonName});
  final String buttonName;
 final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(
            buttonName,
            style: const TextStyle(
              fontSize: 20,color: Colors.black
            ),
          ),
        ),
      ),
    );
  }
}
