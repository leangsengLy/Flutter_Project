import 'package:flutter/material.dart';
import 'package:school/Widget/card_item_progress.dart';
import 'package:school/Widget/item_feature.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return MenuScreenState();
  }
}

class MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 243, 243),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hi, Ly Zee vlogger',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'Here is your activity today, ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Expanded(
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.6,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        children: const [
                          CardItemProgress(
                            title: "Presence",
                            progresss: 89,
                            color: Color.fromARGB(137, 155, 70, 0),
                          ),
                          CardItemProgress(
                            title: "Completeness",
                            progresss: 100,
                            color: Color.fromARGB(137, 1, 100, 167),
                          ),
                          CardItemProgress(
                            title: "Assigments",
                            progresss: 18,
                            color: Color.fromARGB(137, 0, 120, 184),
                          ),
                          CardItemProgress(
                            title: "Total Subject",
                            progresss: 12,
                            color: Color.fromARGB(137, 197, 135, 0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ItemFeature(
                            title: "Exam Mode",
                            icon: Icons.bookmark,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ItemFeature(
                            title: "Exam Mode",
                            icon: Icons.bookmark,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ItemFeature(
                            title: "Exam Mode",
                            icon: Icons.bookmark,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ItemFeature(
                            title: "Exam Mode",
                            icon: Icons.bookmark,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ItemFeature(
                            title: "Exam Mode",
                            icon: Icons.bookmark,
                            color: Colors.black,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
