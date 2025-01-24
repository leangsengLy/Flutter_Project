import 'package:aba_app/screen/aba_setting.dart';
import 'package:aba_app/screen/home_screen.dart';
import 'package:aba_app/widget/pin_number.dart';
import 'package:flutter/material.dart';

class PinToLogin extends StatefulWidget {
  const PinToLogin({super.key, this.typeLogin = ""});
  final String typeLogin;
  @override
  State<PinToLogin> createState() {
    return PinToLoginState();
  }
}

class PinToLoginState extends State<PinToLogin> {
  List<String> pinPassword = [];
  bool? isInvalidPassword = false;
  @override
  void initState() {
    print("Input default");
    super.initState();
    pinPassword = [];
  }

  void onClickNumber(String pin) {
    if (pin == "clear") {
      if (pinPassword.isNotEmpty) {
        setState(() {
          pinPassword.removeLast();
        });
      }
    } else {
      if (pinPassword.length < 4) {
        setState(() {
          pinPassword.add(pin);
        });
      }
    }

    if (pinPassword.length == 4) {
      if (pinPassword.join("") == "2001") {
        setState(() {
          isInvalidPassword = false;
        });
        if (widget.typeLogin == "money") {
          Navigator.of(context).pop(true);
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                Widget content = const AbaSetting();
                if (widget.typeLogin == "money") content = const HomeScreen();
                return content;
              },
            ),
          );
        }
      } else {
        setState(() {
          isInvalidPassword = true;
        });
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context)
            .showSnackBar(
              const SnackBar(
                duration: Duration(seconds: 3),
                backgroundColor: Colors.red,
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Invalid PIN Password Fuck you User!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .closed
            .then((reason) {
          setState(() {
            pinPassword = [];
            isInvalidPassword = false;
          });
        });
      }
    }
    print(pinPassword);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 0, 44, 70),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(115, 107, 107, 107),
                        borderRadius: BorderRadius.circular(90)),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 3),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: const Text("****"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Enter your PIN to log in",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 30),
                      Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(115, 107, 107, 107),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: pinPassword.length == 1 ||
                                      pinPassword.length == 2 ||
                                      pinPassword.length == 3 ||
                                      pinPassword.length == 4
                                  ? !isInvalidPassword!
                                      ? Colors.blue
                                      : Colors.red
                                  : const Color.fromARGB(0, 255, 193, 7),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(115, 107, 107, 107),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: pinPassword.length == 2 ||
                                      pinPassword.length == 3 ||
                                      pinPassword.length == 4
                                  ? !isInvalidPassword!
                                      ? Colors.blue
                                      : Colors.red
                                  : const Color.fromARGB(0, 255, 193, 7),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(115, 107, 107, 107),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: pinPassword.length == 3 ||
                                      pinPassword.length == 4
                                  ? !isInvalidPassword!
                                      ? Colors.blue
                                      : Colors.red
                                  : const Color.fromARGB(0, 255, 193, 7),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(115, 107, 107, 107),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: pinPassword.length == 4
                                  ? !isInvalidPassword!
                                      ? Colors.blue
                                      : Colors.red
                                  : const Color.fromARGB(0, 255, 193, 7),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 500,
              child: GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 29,
                  mainAxisSpacing: 29,
                ),
                children: [
                  PinNumber(label: "1", onSelectPin: onClickNumber),
                  PinNumber(label: "2", onSelectPin: onClickNumber),
                  PinNumber(label: "3", onSelectPin: onClickNumber),
                  PinNumber(label: "4", onSelectPin: onClickNumber),
                  PinNumber(label: "5", onSelectPin: onClickNumber),
                  PinNumber(label: "6", onSelectPin: onClickNumber),
                  PinNumber(label: "7", onSelectPin: onClickNumber),
                  PinNumber(label: "8", onSelectPin: onClickNumber),
                  PinNumber(label: "9", onSelectPin: onClickNumber),
                  PinNumber(label: "C", onSelectPin: onClickNumber),
                  PinNumber(label: "0", onSelectPin: onClickNumber),
                  PinNumber(icon: Icons.backspace, onSelectPin: onClickNumber),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
