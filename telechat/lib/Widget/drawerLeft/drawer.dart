import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:telechat/Provider/ThemeStore.dart';
import 'package:telechat/Provider/themeDark.dart';
import 'package:telechat/Screen/drawerItemDeltailScreen.dart';
import 'package:telechat/Screen/loginscreen.dart';

class DrawerLeft extends ConsumerStatefulWidget {
  const DrawerLeft({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return DrawerLeftState();
  }
}

class DrawerLeftState extends ConsumerState<DrawerLeft> {
  final enterNameGroup = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  void SelectDrawerItem({String type = ""}) {
    Navigator.of(context).pop();
    if (type == "new_channel" || type == "new_group") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: double.infinity,
              height: 160,
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  const Positioned(
                    top: 0,
                    right: 10,
                    child: Icon(
                      Icons.more_vert_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 114, 190),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(Icons.camera_alt),
                      ),
                      SizedBox(
                        width: 220,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: type != "new_channel"
                                    ? "Group name"
                                    : "Create Channel",
                              ),
                              keyboardType: TextInputType.text,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Cancel"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Next"),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const DrawerItemDeltailScreen()),
      );
    }
  }

  bool isDarkMode = false;
  void changeValue(bool isChange) {
    setState(() {
      isDarkMode = isChange;
    });
  }

  void onClickLogin() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = ref.watch(useThemeProvider);
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
                          'Ly zee vlogger ',
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
                SelectDrawerItem(type: "new_group");
              },
              leading: const Icon(Icons.group_add_outlined),
              title: const Text("New Group"),
            ),
            ListTile(
              onTap: () {
                SelectDrawerItem(type: "new_channel");
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
                ref.read(useThemeProvider.notifier).setThemeDarkMode(isDark);
                changeValue(isDark);
              },
              leading: !isDarkMode
                  ? const Icon(Icons.nightlight_outlined)
                  : const Icon(Icons.sunny),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Night Mode"),
                  Switch(
                      value: isDarkMode,
                      onChanged: (isChange) {
                        ref
                            .read(useThemeProvider.notifier)
                            .setThemeDarkMode(isDark);
                        changeValue(isDark);
                      })
                ],
              ),
            ),
            ListTile(
              onTap: () {
                onClickLogin();
              },
              leading: const Icon(Icons.lock_person_outlined),
              title: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
