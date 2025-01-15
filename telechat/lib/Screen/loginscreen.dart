import 'package:flutter/material.dart';
import 'package:telechat/mytele_app.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final enterPasscode = TextEditingController();
  @override
  void dispose() {
    enterPasscode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              TextField(
                controller: enterPasscode,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  labelText: "Your passcode",
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  if (enterPasscode.text.toLowerCase() == "lyzee") {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => MyTeleApp()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.green,
                        content: Text(
                          "Welcome to my app!",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(
                          "Invalid passscode pelase try again!",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  }
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
