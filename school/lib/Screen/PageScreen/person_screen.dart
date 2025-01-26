import 'package:flutter/material.dart';
import 'package:school/Screen/PageScreen/Profile/profile_detail.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});
  void onTabArrowRow(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const ProfileDetail(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScholarSphere'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 90,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color.fromARGB(19, 66, 66, 66),
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: Color.fromARGB(19, 66, 66, 66),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    clipBehavior: Clip.hardEdge,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 226, 226),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                        'assets/images/2.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome'),
                      Text(
                        'Ly Zee vlogger',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(99, 114, 191, 255),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          Icons.person_outline_outlined,
                          color: Color.fromARGB(219, 0, 131, 238),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    onTabArrowRow(context);
                  },
                  child: const Icon(Icons.arrow_forward),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
