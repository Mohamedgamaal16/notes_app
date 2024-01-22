import 'package:flutter/material.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({super.key, required this.isActive, required this.colore});
  final bool isActive;
final Color colore ;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 38,
              backgroundColor: colore,
            ),
          )
        :  CircleAvatar(
            radius: 25,
            backgroundColor: colore,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({
    super.key,
  });

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  List<Color> colors =const  [
    Color(0xff780000),
    Color(0xffc1121f),
    Color(0xffd4a373),
    Color(0xfffaedcd),
    Color(0xfffdf0d5),
    Color(0xff003049),
    Color(0xff669bbc)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 1.5,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ItemColor(colore: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
