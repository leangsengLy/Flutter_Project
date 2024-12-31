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
    );
  }
}
