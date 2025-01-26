import 'package:flutter/material.dart';
import 'package:telechat/Widget/cardChat.dart';
import 'package:telechat/model/user.dart';

class BodyListchat extends StatefulWidget {
  const BodyListchat({super.key, required this.listDisplay});
  final List<User> listDisplay;
  @override
  State<BodyListchat> createState() {
    return BodyListchatState();
  }
}

class BodyListchatState extends State<BodyListchat> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...widget.listDisplay.map((val) => CardChat(
              detail: val.detail,
              image: val.srcImage,
              name: val.name,
              time: val.time,
            ))
      ],
    );
  }
}
