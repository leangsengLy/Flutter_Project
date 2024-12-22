import 'package:flutter/material.dart';

class UiUpdateDemo extends StatefulWidget {
  const UiUpdateDemo({super.key});
  @override
  StatefulElement createElement() {
    print("UIupdateDemo CreateElement called");
    return super.createElement();
  }

  @override
  State<UiUpdateDemo> createState() {
    return _UiUpdateDemoStore();
  }
}

class _UiUpdateDemoStore extends State<UiUpdateDemo> {
  var isUnderstand = false;
  @override
  Widget build(BuildContext context) {
    print("UIupdatedDemo Build Called");
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            textAlign: TextAlign.center,
            "Every flutter developer should have a basic understanding of flutter's internals!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Do you understand how flutter update UIs?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    isUnderstand = false;
                  });
                },
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isUnderstand = true;
                  });
                },
                child: const Text('Yes'),
              ),
            ],
          ),
          if (isUnderstand)
            const Text("Yes Of curse because it is very easy for learn!")
        ],
      )),
    );
  }
}
