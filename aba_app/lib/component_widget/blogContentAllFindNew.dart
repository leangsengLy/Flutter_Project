import 'package:aba_app/widget/contentFindNew.dart';
import 'package:flutter/material.dart';

class BlogContentAllFindNew extends StatelessWidget {
  const BlogContentAllFindNew(
      {super.key, required this.listImages, required this.label});
  final List<String> listImages;
  final String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...listImages.map(
                  (val) => ContentFindNew(urlImage: val),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
