import 'package:flutter/material.dart';
import 'package:telechat/Screen/bodyListChat.dart';
import 'package:telechat/Screen/chatScreen.dart';
import 'package:telechat/Widget/drawerLeft/drawer.dart';

void main() {
  runApp(MyTeleApp());
}

class MyTeleApp extends StatelessWidget {
  MyTeleApp({super.key});
  Widget bodyContent = const Center(
    child: Text("Center"),
  );
  List<Widget> listViewContents = [
    const BodyListchat(),
    const Center(child: Text("No available data!")),
    const Center(child: Text("No available data!")),
    const Center(child: Text("No available data!")),
  ];
  //use for open drawer direct by click button action
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 61, 135),
          brightness: Brightness.dark,
        ),
      ),
      home: DefaultTabController(
        length: 10,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.wallet),
                      SizedBox(width: 10),
                      Text("All"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.wallet),
                      SizedBox(width: 10),
                      Text("My Important file"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.wallet),
                      SizedBox(width: 10),
                      Text("Job"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.wallet),
                      SizedBox(width: 10),
                      Text("Project Flutter"),
                    ],
                  ),
                ),
              ],
            ),
            leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer(); // Open the Drawer
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            actions: [
              SizedBox(
                width: 340,
                height: 45,
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    filled: true,
                    hintText: 'Search',
                    suffix: Container(
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/images/1.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/images/2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/images/3.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ),
                    fillColor: const Color.fromARGB(255, 29, 29, 29),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              )
            ],
          ),
          body: Container(
            color: Colors.black,
            height: double.infinity,
            child: TabBarView(
              children: listViewContents,
            ),
          ),
          drawer: const DrawerLeft(),
        ),
      ),
    );
  }
}
