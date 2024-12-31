import 'package:flutter/material.dart';

class CardContactMetor extends StatelessWidget {
  const CardContactMetor(
      {super.key,
      required this.color,
      required this.title,
      required this.icon});
  final Color color;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(20, 127, 127, 127),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
