import 'package:flutter/material.dart';
import 'package:telechat/Screen/chatScreen.dart';

class CardChat extends StatefulWidget {
  const CardChat({
    super.key,
    required this.image,
    required this.name,
    required this.time,
    required this.detail,
  });
  final String image;
  final String time;
  final String detail;
  final String name;
  @override
  State<CardChat> createState() {
    return CardChatState();
  }
}

class CardChatState extends State<CardChat> {
  void SelectChat() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const ChatScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: SelectChat,
      child: Container(
        width: double.infinity,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20.0),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        widget.image,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(fontSize: 19),
                        ),
                        Expanded(
                          child: Text(
                            widget.detail,
                            style: const TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  widget.time,
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
