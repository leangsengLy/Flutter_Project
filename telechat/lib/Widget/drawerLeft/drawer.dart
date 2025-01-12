import 'package:flutter/material.dart';

class DrawerLeft extends StatefulWidget {
  const DrawerLeft({super.key});
  @override
  State<StatefulWidget> createState() {
    return DrawerLeftState();
  }
}

class DrawerLeftState extends State<DrawerLeft> {
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
          const ListTile(
            leading: Icon(Icons.person_2_outlined),
            title: Text("My Profile"),
          ),
          const ListTile(
            leading: Icon(Icons.group_add_outlined),
            title: Text("New Group"),
          ),
          const ListTile(
            leading: Icon(Icons.medical_information_outlined),
            title: Text("New Channel"),
          ),
          const ListTile(
            leading: Icon(Icons.contact_emergency_outlined),
            title: Text("Contact"),
          ),
          const ListTile(
            leading: Icon(Icons.call_end_outlined),
            title: Text("Call"),
          ),
          const ListTile(
            leading: Icon(Icons.save_alt_sharp),
            title: Text("Saved Message"),
          ),
          const ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text("Settings"),
          ),
          const ListTile(
            leading: Icon(Icons.nightlight_outlined),
            title: Text("Night Mode"),
          )
        ],
      ),
    ));
  }
}
