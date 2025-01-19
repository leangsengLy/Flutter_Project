import 'package:flutter/material.dart';

class ContentFindNew extends StatelessWidget {
  const ContentFindNew({super.key, required this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          height: 170,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(13),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.asset(
                urlImage,
                width: double.infinity,
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  }
}
