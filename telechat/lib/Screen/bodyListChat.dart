import 'package:flutter/material.dart';
import 'package:telechat/Widget/cardChat.dart';

class BodyListchat extends StatefulWidget {
  const BodyListchat({super.key});
  @override
  State<BodyListchat> createState() {
    return BodyListchatState();
  }
}

class BodyListchatState extends State<BodyListchat> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CardChat(),
        CardChat(),
        CardChat(),
        CardChat(),
        CardChat(),
        CardChat(),
        CardChat(),
        CardChat(),
        CardChat(),
        CardChat(),
        CardChat(),
        CardChat(),
      ],
    );
  }
}
