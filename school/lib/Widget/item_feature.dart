import 'package:flutter/material.dart';

class ItemFeature extends StatelessWidget {
  const ItemFeature(
      {super.key,
      required this.title,
      required this.color,
      required this.icon});
  final IconData icon;
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(19),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 24,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(title)
      ],
    );
  }
}
