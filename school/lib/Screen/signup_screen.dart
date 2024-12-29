import 'package:flutter/material.dart';
import 'package:school/Screen/verify.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  bool isCheckBox = false;
  void onClickButtonSignUp() {
    if (isCheckBox) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const VerifyScreen()),
      );
    } else {
      showDialog(
          context: context,
          builder: (BuildContext ctx) {
            return AlertDialog(
              title: const Text("Warning!"),
              content:
                  const Text("Please read all my message below and checkbox!"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: const Text('Ok'),
                )
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up/Sign in'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 30,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Phone Number',
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isCheckBox,
                        onChanged: (isCheck) {
                          setState(() {
                            isCheckBox = isCheck!;
                          });
                        },
                      ),
                      const SizedBox(width: 5),
                      const Expanded(
                        child: Text(
                          'I agree with the terms and conditions and also the protection of my personal data on this application',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: onClickButtonSignUp,
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 205, 241),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
