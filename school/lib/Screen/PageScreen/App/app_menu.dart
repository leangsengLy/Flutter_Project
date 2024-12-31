import 'package:flutter/material.dart';
import 'package:school/Screen/PageScreen/App/icon_menu.dart';

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
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          padding: const EdgeInsets.all(20),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: const [
              IconMenu(
                clbg: Color.fromARGB(20, 244, 67, 54),
                color: Color.fromARGB(253, 244, 67, 54),
                icon: Icons.person,
                title: "Math",
              ),
              IconMenu(
                clbg: Color.fromARGB(36, 144, 55, 0),
                color: Color.fromARGB(244, 144, 55, 0),
                icon: Icons.history_edu,
                title: "Physics",
              ),
              IconMenu(
                clbg: Color.fromARGB(27, 0, 8, 154),
                color: Color.fromARGB(255, 0, 8, 154),
                icon: Icons.attractions_outlined,
                title: "Arts",
              ),
              IconMenu(
                clbg: Color.fromARGB(27, 15, 154, 0),
                color: Color.fromARGB(255, 15, 154, 0),
                icon: Icons.biotech_outlined,
                title: "Biology",
              ),
              IconMenu(
                clbg: Color.fromARGB(27, 82, 0, 107),
                color: Color.fromARGB(248, 82, 0, 107),
                icon: Icons.twenty_three_mp_outlined,
                title: "Technology",
              ),
              IconMenu(
                clbg: Color.fromARGB(27, 0, 84, 107),
                color: Color.fromARGB(255, 0, 84, 107),
                icon: Icons.twenty_three_mp_outlined,
                title: "Economy",
              ),
              IconMenu(
                clbg: Color.fromARGB(36, 11, 39, 254),
                color: Color.fromARGB(248, 11, 39, 254),
                icon: Icons.menu_book_rounded,
                title: "English",
              ),
              IconMenu(
                clbg: Color.fromARGB(35, 226, 34, 0),
                color: Color.fromARGB(244, 226, 34, 0),
                icon: Icons.text_increase_sharp,
                title: "Geography",
              ),
              IconMenu(
                clbg: Color.fromARGB(34, 144, 123, 0),
                color: Color.fromARGB(255, 144, 122, 0),
                icon: Icons.grade_sharp,
                title: "Chemical",
              ),
              IconMenu(
                clbg: Color.fromARGB(20, 244, 67, 54),
                color: Color.fromARGB(253, 244, 67, 54),
                icon: Icons.person,
                title: "Math",
              ),
              IconMenu(
                clbg: Color.fromARGB(36, 144, 55, 0),
                color: Color.fromARGB(244, 144, 55, 0),
                icon: Icons.history_edu,
                title: "Physics",
              ),
              IconMenu(
                clbg: Color.fromARGB(27, 0, 8, 154),
                color: Color.fromARGB(255, 0, 8, 154),
                icon: Icons.attractions_outlined,
                title: "Arts",
              ),
              IconMenu(
                clbg: Color.fromARGB(36, 11, 39, 254),
                color: Color.fromARGB(248, 11, 39, 254),
                icon: Icons.menu_rounded,
                title: "English",
              ),
              IconMenu(
                clbg: Color.fromARGB(35, 226, 34, 0),
                color: Color.fromARGB(244, 226, 34, 0),
                icon: Icons.phishing_outlined,
                title: "Geography",
              ),
              IconMenu(
                clbg: Color.fromARGB(34, 144, 123, 0),
                color: Color.fromARGB(255, 144, 122, 0),
                icon: Icons.gradient_outlined,
                title: "Chemical",
              ),
            ],
          ),
        ));
  }
}
