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
                      child: Image.network(
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                        'https://scontent.fpnh24-1.fna.fbcdn.net/v/t39.30808-6/456907763_122141789888304464_1739001889966117959_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHxMTABCAQS46MxxwXrtYKAh3wgNU0UkTaHfCA1TRSRNr5WvfSfFvkgk35z7KE6telJ70kiPO164-kBCZZ2106J&_nc_ohc=82A96hAqAioQ7kNvgHRUTEb&_nc_zt=23&_nc_ht=scontent.fpnh24-1.fna&_nc_gid=ArzA2dPL4mJva6RjgZusfgW&oh=00_AYAoOkvRAA-YlScUjXDVgN7OCq-0i8z1SHV8hY0Cm7FLJw&oe=6776E567',
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
