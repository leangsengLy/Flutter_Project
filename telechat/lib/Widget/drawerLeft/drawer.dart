import 'package:flutter/material.dart';
import 'package:telechat/Screen/drawerItemDeltailScreen.dart';

class DrawerLeft extends StatefulWidget {
  const DrawerLeft({super.key});

  @override
  State<StatefulWidget> createState() {
    return DrawerLeftState();
  }
}

class DrawerLeftState extends State<DrawerLeft> {
  void SelectDrawerItem() {
    Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => const DrawerItemDeltailScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      margin: const EdgeInsets.fromLTRB(10, 40, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset('assets/images/1.jpg'),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Ly zee vlogger',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Set Emoji Status',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_downward,
                    size: 20,
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          ListTile(
            onTap: () {
              SelectDrawerItem();
            },
            leading: const Icon(Icons.person_2_outlined),
            title: const Text("My Profile"),
          ),
          ListTile(
            onTap: () {
              SelectDrawerItem();
            },
            leading: const Icon(Icons.group_add_outlined),
            title: const Text("New Group"),
          ),
          ListTile(
            onTap: () {
              SelectDrawerItem();
            },
            leading: const Icon(Icons.medical_information_outlined),
            title: const Text("New Channel"),
          ),
          ListTile(
            onTap: () {
              SelectDrawerItem();
            },
            leading: const Icon(Icons.contact_emergency_outlined),
            title: const Text("Contact"),
          ),
          ListTile(
            onTap: () {
              SelectDrawerItem();
            },
            leading: const Icon(Icons.call_end_outlined),
            title: const Text("Call"),
          ),
          ListTile(
            onTap: () {
              SelectDrawerItem();
            },
            leading: const Icon(Icons.save_alt_sharp),
            title: const Text("Saved Message"),
          ),
          ListTile(
            onTap: () {
              SelectDrawerItem();
            },
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Settings"),
          ),
          ListTile(
            onTap: () {
              SelectDrawerItem();
            },
            leading: const Icon(Icons.nightlight_outlined),
            title: const Text("Night Mode"),
          )
        ],
      ),
    ));
  }
}
