import 'package:flutter/material.dart';
import 'package:school/Screen/menu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  void onClickButtonContinues() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const MenuScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Create your profile",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Text(
                textAlign: TextAlign.center,
                "Provide your profile picture and display your name to make easy delivery",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              alignment: Alignment.center,
              width: 150,
              height: 150,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(
                    100,
                  )),
              child: Image.asset(
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                'assets/images/2.jpg',
              ),
            ),
            const SizedBox(height: 40),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(36, 0, 0, 0),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Ly Zee vlogger",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            InkWell(
              onTap: onClickButtonContinues,
              child: Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 127, 218),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
