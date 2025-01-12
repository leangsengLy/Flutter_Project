import 'package:flutter/material.dart';
import 'package:telechat/Screen/chatScreen.dart';

class CardChat extends StatefulWidget {
  const CardChat({super.key});
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
      child: Card(
        color: const Color.fromARGB(0, 244, 67, 54),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20.0),
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
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      'assets/images/1.jpg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ly Zee vlogger',
                        style: TextStyle(fontSize: 19),
                      ),
                      Text(
                        'Ok bro',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
              const Text(
                '8:67PM',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
