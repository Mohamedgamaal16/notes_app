import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.colorData});
final Color colorData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24, right: 24),
        decoration: BoxDecoration(
          color:  colorData  ,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text(
                  'Build your career with abo gamal',
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            const Text(
              'jan 2024 ',
              style: TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
