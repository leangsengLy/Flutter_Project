import 'package:flutter/material.dart';
import 'package:school/Screen/PageScreen/App/app_menu.dart';
import 'package:school/Screen/PageScreen/calender_screen.dart';
import 'package:school/Screen/PageScreen/contact_screen.dart';
import 'package:school/Screen/PageScreen/home_screen.dart';
import 'package:school/Screen/PageScreen/person_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return MenuScreenState();
  }
}

class MenuScreenState extends State<MenuScreen> {
  var indexScreen = 0;
  void onSelectNavigator(index) {
    print(index);
    setState(() {
      indexScreen = index;
      print(indexScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget allScreen = const AppMenu();
    print(indexScreen);
    if (indexScreen == 1) {
      allScreen = const HomeScreen();
    }
    if (indexScreen == 2) {
      allScreen = const PersonScreen();
    }
    if (indexScreen == 3) {
      allScreen = const ContactScreen();
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 243, 243),
      body: allScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onSelectNavigator,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                size: 34,
                Icons.apps_sharp,
                color: indexScreen == 0
                    ? const Color.fromARGB(255, 0, 57, 122)
                    : const Color.fromARGB(255, 141, 141, 141),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                size: 34,
                Icons.menu_sharp,
                color: indexScreen == 1
                    ? const Color.fromARGB(255, 0, 57, 122)
                    : const Color.fromARGB(255, 141, 141, 141),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                size: 34,
                Icons.person,
                color: indexScreen == 2
                    ? const Color.fromARGB(255, 0, 57, 122)
                    : const Color.fromARGB(255, 141, 141, 141),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                size: 34,
                Icons.person_search_sharp,
                color: indexScreen == 3
                    ? const Color.fromARGB(255, 0, 57, 122)
                    : const Color.fromARGB(255, 141, 141, 141),
              ),
              label: ''),
        ],
      ),
    );
  }
}
