import 'package:flutter/material.dart';
import 'package:school/Screen/PageScreen/Contact/card_contact_metor.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Mentor'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: const Column(
          children: [
            SizedBox(height: 30),
            CardContactMetor(
              color: Color.fromARGB(255, 30, 178, 0),
              icon: Icons.menu_book_rounded,
              title: "English Mentor",
            ),
            CardContactMetor(
              color: Color.fromARGB(255, 169, 82, 0),
              icon: Icons.h_mobiledata_sharp,
              title: "Maths Mentor",
            ),
            CardContactMetor(
              color: Color.fromARGB(255, 255, 183, 0),
              icon: Icons.auto_graph_outlined,
              title: "Physics Mentor",
            ),
          ],
        ),
      ),
    );
  }
}
