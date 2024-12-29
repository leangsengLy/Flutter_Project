import 'package:flutter/material.dart';
import 'package:school/Screen/profile.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return VerifyScreenState();
  }
}

class VerifyScreenState extends State<VerifyScreen> {
  void onClickVerify() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const ProfileScreen(),
      ),
    );
  }

  void onResendCode() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 72, 194, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 72, 194, 255),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Verification Code',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Enter the code send by SMS to verify your phone number',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '8',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 31, 180, 254),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: onClickVerify,
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 31, 180, 254),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            InkWell(
              onTap: onResendCode,
              child: const Text(
                "Resend code",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
