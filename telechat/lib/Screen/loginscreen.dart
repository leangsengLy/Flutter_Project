import 'package:flutter/material.dart';
import 'package:telechat/Screen/bodyListChat.dart';
import 'package:telechat/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter your local passcode',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              const TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Your passcode",
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => MyTeleApp()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 135, 245),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                textAlign: TextAlign.center,
                'You need to enter your passcode before you can use windows Hello.',
                style: TextStyle(
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
