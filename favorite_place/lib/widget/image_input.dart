import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/widgets.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key, required this.onSelectImage});
  final void Function(File image) onSelectImage;
  @override
  State<ImageInput> createState() {
    return ImageInputState();
  }
}

class ImageInputState extends State<ImageInput> {
  File? selectedImage;
  void takePicture() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
    if (pickedImage == null) return;
    setState(() {
      selectedImage = File(pickedImage.path);
    });
    widget.onSelectImage(selectedImage!);
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
      icon: const Icon(Icons.camera_alt),
      label: const Text("Take picture"),
      onPressed: takePicture,
    );
    if (selectedImage != null) {
      content = GestureDetector(
        onTap: takePicture,
        child: Image.file(
          selectedImage!,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      );
    }
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
      child: content,
    );
  }
}
