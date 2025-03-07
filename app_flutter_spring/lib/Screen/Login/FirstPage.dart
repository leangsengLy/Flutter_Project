import 'package:app_flutter_spring/Screen/Login/SecondPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  void onClickToPageLogin(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => const Secondpage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Image.asset(
                    "assets/image/login/login1.jpg",
                    width: 330,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Discover your",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 240, 108, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Dream Job here",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 240, 108, 0),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Explore all the existing job roles based on your interest and study major",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 0, 40, 150),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        onClickToPageLogin(context);
                      },
                      child: Container(
                        height: 55,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 240, 108, 0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 65,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
