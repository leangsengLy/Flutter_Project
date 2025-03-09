import 'package:app_flutter_spring/Screen/Login/CreatePage.dart';
import 'package:app_flutter_spring/Screen/Menu/Menu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() {
    return LoginPageStore();
  }
}

class LoginPageStore extends State<LoginPage> {
  final username = TextEditingController();
  final password = TextEditingController();
  void onCreateNewAccount(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => Createpage()));
  }

  final Map<String, dynamic> requestBody = {
    'username': '',
    'password': '',
  };

  String? errorUsername;
  String? errorPassword;
  void onClickButtonLogin() async {
    print("click king !!!!!!!");
    if (password.text.isEmpty || username.text.isEmpty) {
      if (password.text.isEmpty) {
        setState(() {
          errorPassword = "Password is required!";
        });
      }
      if (username.text.isEmpty) {
        setState(() {
          errorUsername = "Username is required!";
        });
      }
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Please check your account again")));
    } else {
      requestBody['username'] = username.text;
      requestBody['password'] = password.text;
      print(requestBody);
      final response = await http.post(
        Uri.parse("http://192.168.1.5:8080/api/login/login"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8', // Set headers
        },
        body: jsonEncode(requestBody),
      );
      if (response.statusCode == 200) {
        // Parse the response
        final responseData = jsonDecode(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            showCloseIcon: true,
            backgroundColor: Color.fromARGB(255, 0, 148, 5),
            content: Text(
              "login successfuly!",
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
        await Future.delayed(const Duration(seconds: 2), () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => const Menu()));
        });
      } else {
        final message = jsonDecode(response.body);
        print(message);
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(message['message']),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    username.dispose();
    password.dispose();
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
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 140,
                ),
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
                const SizedBox(height: 50),
                TextField(
                  controller: username,
                  decoration: InputDecoration(
                    errorText: errorUsername,
                    labelText: "Username",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 18),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: password,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    errorText: errorPassword,
                    labelText: "Password",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 18),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget your password?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 240, 108, 0),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                InkWell(
                  onTap: () {
                    onClickButtonLogin();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 108, 0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    onCreateNewAccount(context);
                  },
                  child: const Text(
                    "create new account",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Or continues with",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 240, 108, 0),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(88, 172, 172, 172),
                      ),
                      child: const Icon(
                        size: 25,
                        Icons.g_translate_rounded,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(88, 172, 172, 172),
                      ),
                      child: const Icon(
                        size: 25,
                        Icons.facebook,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(88, 172, 172, 172),
                      ),
                      child: const Icon(
                        size: 25,
                        Icons.apple,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
