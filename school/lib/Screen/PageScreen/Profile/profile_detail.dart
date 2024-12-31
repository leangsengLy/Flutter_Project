import 'package:flutter/material.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key});
  @override
  State<ProfileDetail> createState() {
    return ProfileDetailState();
  }
}

class ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No available data of Ly zee !!",
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          SizedBox(height: 6),
          Text('welcome to ly zee vlogger!')
        ],
      )),
    );
  }
}
