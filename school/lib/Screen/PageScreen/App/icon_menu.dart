import 'package:flutter/material.dart';

class IconMenu extends StatefulWidget {
  const IconMenu(
      {super.key,
      required this.color,
      required this.clbg,
      required this.icon,
      required this.title});
  final IconData icon;
  final Color color;
  final Color clbg;
  final String title;

  @override
  State<IconMenu> createState() {
    return IconMenuState();
  }
}

class IconMenuState extends State<IconMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: widget.clbg,
            borderRadius: BorderRadius.circular(29),
          ),
          child: Icon(
            widget.icon,
            size: 35,
            color: widget.color,
          ),
        ),
        const SizedBox(height: 10),
        Text(widget.title)
      ],
    );
  }
}
