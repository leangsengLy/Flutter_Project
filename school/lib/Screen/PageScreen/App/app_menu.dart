import 'package:flutter/material.dart';

class AppMenu extends StatefulWidget {
  const AppMenu({super.key});
  @override
  State<AppMenu> createState() {
    return AppMenuState();
  }
}

class AppMenuState extends State<AppMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Subjects"),
          actions: const [
            Icon(Icons.edit_document),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          padding: const EdgeInsets.all(20),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            children: [
              Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: const Icon(
                      Icons.man_outlined,
                      size: 37,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Math",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
