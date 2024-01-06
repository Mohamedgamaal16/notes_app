import 'package:flutter/material.dart';
import 'package:notes_app_gemy/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.title, required this.icon });
final String title ; 
final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            )),
        const Spacer(),
         CustomSearchIcon(icon: icon),
      ],
    );
  }
}

