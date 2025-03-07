import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login here",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 240, 108, 0),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome back you've been missed!",
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 49, 49, 49),
                    fontWeight: FontWeight.w700),
              ),
              const TextField(),
              const TextField(),
              const SizedBox(height: 10),
              const Text(
                "Forget your password?",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 240, 108, 0),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 60),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 66,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 108, 0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
