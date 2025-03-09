import 'package:app_flutter_spring/Screen/Login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // For encoding/decoding JSON

class Createpage extends StatefulWidget {
  const Createpage({super.key});
  @override
  State<Createpage> createState() {
    return CreatepageState();
  }
}

class CreatepageState extends State<Createpage> {
  final username = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  String? errorUsername;
  String? errorPassword;
  String? errorConfirmPassword;
  bool isLoading = false;
  Future<void> OnClickSigninCreate(BuildContext context) async {
    // Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (ctx) => const Secondpage()));
    print(username.text);
    print(password.text);
    print(confirmPassword.text);
    final Map<String, dynamic> requestBody = {
      'username': '',
      'password': '',
      'employeeId': 100, //Fix because in backend don't check about employee id
    };
    if (username.text.isEmpty ||
        password.text.isEmpty ||
        confirmPassword.text.isEmpty) {
      if (username.text.isEmpty) {
        setState(() {
          errorUsername = "Username is required!";
        });
      }
      if (password.text.isEmpty) {
        setState(() {
          errorPassword = "Password is required!";
        });
      }
      if (confirmPassword.text.isEmpty) {
        setState(() {
          errorConfirmPassword = "ConfirmPassword is required!";
        });
      }

      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: const Text("Please check your password again"),
          action: SnackBarAction(
              label: "Ok",
              onPressed: () {
                print("Ok my man");
              }),
        ),
      );
    } else {
      setState(() {
        errorUsername = "";
        errorPassword = "";
        errorConfirmPassword = "";
      });
      requestBody['username'] = username.text;
      requestBody['password'] = password.text;
      print(requestBody);
      if (password.text == confirmPassword.text) {
        setState(() {
          isLoading = true;
        });
        try {
          print("repont back");
          //if use with  device emulator with url with http://10.0.2.2:8080
          //this localhost we get from real computer http://192.168.1.5
          // to find cmd -> ipconfig and locking for  IPV 4 address
          // Send POST request
          final response = await http.post(
            Uri.parse("http://192.168.1.5:8080/api/login/create"),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8', // Set headers
            },
            body: jsonEncode(requestBody), // Encode data to JSON
          );

          // Check if the request was successful
          if (response.statusCode == 201) {
            setState(() {
              isLoading = false;
            });
            // Parse the response
            final responseData = jsonDecode(response.body);
            print('Response data: $responseData');

            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              showCloseIcon: true,
              backgroundColor: Color.fromARGB(255, 0, 148, 5),
              content: Text(
                "Create account login successfuly!",
                style: TextStyle(color: Colors.white),
              ),
            ));
            await Future.delayed(Duration(seconds: 2), () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const LoginPage()));
            });
          } else {
            // Handle errors
            setState(() {
              isLoading = false;
            });
            print('Failed to load data: ${response.statusCode}');
            print('Response body: ${response.body}');
            final message = jsonDecode(response.body);
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(message['message'].toString().length > 40
                    ? "Your username have duplicate!"
                    : message['message'])));
          }
        } catch (e) {
          // Handle exceptions
          print('Error: $e');
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              "Your password is incorrect!",
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    }
  }

  void onClickTextAlreadyAccount(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const LoginPage(),
      ),
    );
  }

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 170),
                const Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 240, 108, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Create an account so you can expolore of the existed jobs",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                TextField(
                  enableInteractiveSelection: false,
                  controller: username,
                  onChanged: (value) {
                    setState(() {
                      if (value.isEmpty) {
                        errorUsername = "Username is required!";
                      } else {
                        errorUsername = "";
                      }
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Username",
                    errorText: errorUsername,
                    // filled: true, // Enable background color
                    // fillColor: Color.fromARGB(26, 244, 139, 54),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: password,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    setState(() {
                      if (value.isEmpty) {
                        errorPassword = "Password is required!";
                      } else {
                        errorPassword = "";
                      }
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                    errorText: errorPassword,
                    // filled: true, // Enable background color
                    // fillColor: Color.fromARGB(26, 244, 139, 54),
                    border: const OutlineInputBorder(
                      // borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: confirmPassword,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      if (value.isEmpty) {
                        errorConfirmPassword = "ConfirmPassword is required!";
                      } else {
                        errorConfirmPassword = "";
                      }
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    errorText: errorConfirmPassword,
                    // filled: true, // Enable background color
                    // fillColor: Color.fromARGB(26, 244, 139, 54),
                    border: const OutlineInputBorder(
                      // borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    OnClickSigninCreate(context);
                  },
                  splashColor: Colors.red,
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
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    onClickTextAlreadyAccount(context);
                  },
                  child: const Text(
                    "Already have an account",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
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
