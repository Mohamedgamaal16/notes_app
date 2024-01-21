import 'package:flutter/material.dart';
import 'package:notes_app_gemy/constans.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
     this.isLoading = false,
  });
  final bool isLoading;
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
          child: isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ))
              : const Text(
                  'save',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
        ),
      ),
    );
  }
}
