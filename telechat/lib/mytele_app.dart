import 'package:flutter/material.dart';
import 'package:telechat/Screen/bodyListChat.dart';
import 'package:telechat/Screen/chatScreen.dart';
import 'package:telechat/Widget/cardChat.dart';
import 'package:telechat/Widget/drawerLeft/drawer.dart';
import 'package:telechat/model/user.dart';

class MyTeleApp extends StatelessWidget {
  MyTeleApp({super.key});
  Widget bodyContent = const Center(
    child: Text("Center"),
  );

  final List<User> data = [
    const User(
      srcImage: "assets/images/1.jpg",
      name: "Ly Leangseng",
      time: "8:00AM",
      detail: "fting a unique brand identity starts ",
    ),
    const User(
      srcImage: "assets/images/12.png",
      name: "Ly Leangseng",
      time: "8:00AM",
      detail: "What are you doing my main",
    ),
    const User(
      srcImage: "assets/images/meng.jpg",
      name: "Hong Meng",
      time: "8:10AM",
      detail: "professional school logo design",
    ),
    const User(
      srcImage: "assets/images/seng.jpg",
      name: "Oopa Heng",
      time: "8:04AM",
      detail: "Canva’s free, high-quality templates",
    ),
    const User(
      srcImage: "assets/images/meas.jpg",
      name: "Sok Mean Huneeii",
      time: "8:05AM",
      detail: "that are easy to customize.",
    ),
    const User(
      srcImage: "assets/images/seng1.jpg",
      name: "Ly Hong leang",
      time: "11:00AM",
      detail: "Build a strong academic identity",
    ),
    const User(
      srcImage: "assets/images/seng2.jpg",
      name: "Ly Zee",
      time: "8:00AM",
      detail: "....",
    ),
    const User(
      srcImage: "assets/images/seng3.jpg",
      name: "Ly Channa",
      time: "8:10AM",
      detail: "you have the legal right to do so and",
    ),
    const User(
      srcImage: "assets/images/seng4.jpg",
      name: "Seng rithy",
      time: "6:04AM",
      detail: "Uploading a non-free logo using",
    ),
    const User(
      srcImage: "assets/images/2.jpg",
      name: "Japan Nies",
      time: "8:05AM",
      detail: "Transferred from en.wikipedia",
    ),
    const User(
      srcImage: "assets/images/meas.jpg",
      name: "Sok Mean Huneeii",
      time: "8:05AM",
      detail: "that are easy to customize.",
    ),
    const User(
      srcImage: "assets/images/seng1.jpg",
      name: "Ly Hong leang",
      time: "11:00AM",
      detail: "Build a strong academic identity",
    ),
    const User(
      srcImage: "assets/images/seng2.jpg",
      name: "Ly Zee",
      time: "8:00AM",
      detail: "....",
    ),
    const User(
      srcImage: "assets/images/1.jpg",
      name: "Ly Leangseng",
      time: "8:00AM",
      detail: "fting a unique brand identity starts ",
    ),
    const User(
      srcImage: "assets/images/12.png",
      name: "Ly Leangseng",
      time: "8:00AM",
      detail: "What are you doing my main",
    ),
    const User(
      srcImage: "assets/images/meng.jpg",
      name: "Hong Meng",
      time: "8:10AM",
      detail: "professional school logo design",
    ),
    const User(
      srcImage: "assets/images/seng.jpg",
      name: "Oopa Heng",
      time: "8:04AM",
      detail: "Canva’s free, high-quality templates",
    ),
    const User(
      srcImage: "assets/images/meas.jpg",
      name: "Sok Mean Huneeii",
      time: "8:05AM",
      detail: "that are easy to customize.",
    ),
  ];

  //use for open drawer direct by click button action
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    List<Widget> listViewContents = [
      BodyListchat(
        listDisplay: data,
      ),
      const BodyListchat(
        listDisplay: [
          User(
            srcImage: "assets/images/seng.jpg",
            name: "Oopa Heng",
            time: "8:04AM",
            detail: "What are you doing my main",
          ),
          User(
            srcImage: "assets/images/meas.jpg",
            name: "Sok Mean Huneeii",
            time: "8:05AM",
            detail: "What are you doing my main",
          ),
          User(
            srcImage: "assets/images/12.png",
            name: "Ly Leangseng",
            time: "8:00AM",
            detail: "What are you doing my main",
          ),
          User(
            srcImage: "assets/images/meng.jpg",
            name: "Hong Meng",
            time: "8:10AM",
            detail: "professional school logo design",
          ),
          User(
            srcImage: "assets/images/seng.jpg",
            name: "Oopa Heng",
            time: "8:04AM",
            detail: "Canva’s free, high-quality templates",
          ),
        ],
      ),
      const BodyListchat(
        listDisplay: [
          User(
            srcImage: "assets/images/seng.jpg",
            name: "Oopa Heng",
            time: "8:04AM",
            detail: "What are you doing my main",
          ),
          User(
            srcImage: "assets/images/meng.jpg",
            name: "Hong Meng",
            time: "8:10AM",
            detail: "professional school logo design",
          ),
          User(
            srcImage: "assets/images/seng.jpg",
            name: "Oopa Heng",
            time: "8:04AM",
            detail: "Canva’s free, high-quality templates",
          ),
          User(
            srcImage: "assets/images/meas.jpg",
            name: "Sok Mean Huneeii",
            time: "8:05AM",
            detail: "that are easy to customize.",
          ),
        ],
      ),
    ];
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.all_inbox),
                      SizedBox(width: 10),
                      Text("All"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.join_full),
                      SizedBox(width: 10),
                      Text("Job"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.work_rounded),
                      SizedBox(width: 10),
                      Text("Project"),
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
