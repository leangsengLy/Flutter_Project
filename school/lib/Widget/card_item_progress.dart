import 'package:flutter/material.dart';

class CardItemProgress extends StatelessWidget {
  const CardItemProgress(
      {super.key,
      required this.title,
      required this.progresss,
      required this.color});
  final String title;
  final double progresss;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${progresss.toString()}%",
            style: TextStyle(
              fontSize: 23,
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
