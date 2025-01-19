import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(2),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Image.asset(
              'assets/images/1.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 14),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Leangseng!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "View profile",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
