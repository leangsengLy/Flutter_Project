import 'package:flutter/material.dart';
import 'package:school/Widget/card_item_progress.dart';
import 'package:school/Widget/item_feature.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ItemFeature(
                          title: "Exam Mode",
                          icon: Icons.bookmark,
                          color: Color.fromARGB(255, 48, 68, 33),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        ItemFeature(
                          title: "Subjects",
                          icon: Icons.school_rounded,
                          color: Color.fromARGB(255, 0, 53, 187),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        ItemFeature(
                          title: "App Lock",
                          icon: Icons.key,
                          color: Color.fromARGB(255, 197, 135, 0),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        ItemFeature(
                          title: "Exam Mode",
                          icon: Icons.voice_chat,
                          color: Color.fromARGB(255, 28, 129, 0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(248, 0, 135, 213),
                          Color.fromARGB(102, 137, 223, 255),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Focos mode",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 160,
                          child: Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Icon(
                                  Icons.pause,
                                  size: 30,
                                  color: Color.fromARGB(255, 143, 234, 248),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: const Icon(
                                      Icons.play_arrow,
                                      size: 40,
                                      color: Color.fromARGB(255, 143, 234, 248),
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.refresh_rounded,
                                      size: 62,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
