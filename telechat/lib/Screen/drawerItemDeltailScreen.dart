import 'package:flutter/material.dart';

class DrawerItemDeltailScreen extends StatefulWidget {
  const DrawerItemDeltailScreen({super.key});
  @override
  State<DrawerItemDeltailScreen> createState() {
    return DrawerItemDeltailScreenState();
  }
}

class DrawerItemDeltailScreenState extends State<DrawerItemDeltailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Information'),
      ),
      body: const Center(
        child: Text("This screen we didn't complete code!"),
      ),
    );
  }
}
