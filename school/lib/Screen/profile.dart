import 'package:flutter/material.dart';
import 'package:school/Screen/menu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  void onClickButtonContinues() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const MenuScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Create your profile",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Text(
                textAlign: TextAlign.center,
                "Provide your profile picture and display your name to make easy delivery",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              alignment: Alignment.center,
              width: 150,
              height: 150,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(
                    100,
                  )),
              child: Image.network(
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                'https://scontent.fpnh24-1.fna.fbcdn.net/v/t39.30808-6/456907763_122141789888304464_1739001889966117959_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHxMTABCAQS46MxxwXrtYKAh3wgNU0UkTaHfCA1TRSRNr5WvfSfFvkgk35z7KE6telJ70kiPO164-kBCZZ2106J&_nc_ohc=82A96hAqAioQ7kNvgHRUTEb&_nc_zt=23&_nc_ht=scontent.fpnh24-1.fna&_nc_gid=ArzA2dPL4mJva6RjgZusfgW&oh=00_AYAoOkvRAA-YlScUjXDVgN7OCq-0i8z1SHV8hY0Cm7FLJw&oe=6776E567',
              ),
            ),
            const SizedBox(height: 40),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(36, 0, 0, 0),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Ly Zee vlogger",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            InkWell(
              onTap: onClickButtonContinues,
              child: Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 127, 218),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
