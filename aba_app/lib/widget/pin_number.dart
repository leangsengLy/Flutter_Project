import 'package:flutter/material.dart';

class PinNumber extends StatelessWidget {
  const PinNumber(
      {super.key, this.icon, this.label = "", required this.onSelectPin});
  final String? label;
  final IconData? icon;
  final void Function(String pin) onSelectPin;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.amber,
      onTap: () {
        onSelectPin(label == "" ? "clear" : label!);
      },
      child: Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color.fromARGB(61, 141, 141, 141),
            borderRadius: BorderRadius.circular(100)),
        child: label != ""
            ? Text(
                label!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Icon(
                icon,
                size: 29,
                color: Colors.white,
              ),
      ),
    );
  }
}
