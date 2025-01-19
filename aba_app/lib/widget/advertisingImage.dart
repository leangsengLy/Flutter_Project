import 'package:flutter/material.dart';

class Advertisingimage extends StatelessWidget {
  const Advertisingimage({super.key, required this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "New & Promotions",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              urlImage,
              width: double.infinity,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
