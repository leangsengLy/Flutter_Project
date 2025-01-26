import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:school/Screen/signup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  void onStartScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const SignUpScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            fit: BoxFit.scaleDown,
            width: double.maxFinite,
            height: double.maxFinite,
            'assets/images/2.avif',
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(15, 1, 143, 204),
                  Color.fromARGB(255, 0, 110, 255),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/images/LOGO.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Scholaspher',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            right: 0,
            left: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  textAlign: TextAlign.center,
                  'Hello and welcome here!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Get an overview of how you are performing and motivate yourself to achieve even more.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                InkWell(
                  splashColor: Colors.amber,
                  onTap: () {
                    onStartScreen(context);
                  },
                  child: Container(
                    width: 160,
                    alignment: Alignment.center,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 7, 210, 251),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Text(
                      'Let Start',
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
