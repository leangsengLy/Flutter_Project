import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});
  @override
  State<ImageInput> createState() {
    return ImageInputState();
  }
}

class ImageInputState extends State<ImageInput> {
  void takePicture() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: TextButton.icon(
        icon: const Icon(Icons.camera_alt),
        label: const Text("Take picture"),
        onPressed: takePicture,
      ),
    );
  }
}
