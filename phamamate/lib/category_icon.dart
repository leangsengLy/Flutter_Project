import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon(this.title, {super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 247, 162, 162),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.carpenter,
            color: Colors.white,
            size: 20,
          ),
        ),
        Text(title),
      ],
    );
  }
}
