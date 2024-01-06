import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
 final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      child:  Center(child: Icon(icon)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.05),
      ),
    );
  }
}
