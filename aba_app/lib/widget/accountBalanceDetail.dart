import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Accountbalancedetail extends StatefulWidget {
  const Accountbalancedetail({super.key});
  @override
  State<Accountbalancedetail> createState() {
    return AccountbalancedetailState();
  }
}

class AccountbalancedetailState extends State<Accountbalancedetail> {
  bool isShowDetailBalance = false;
  void onClickEyeShowDetailBalanch() {
    print("show image money");
    setState(() {
      isShowDetailBalance = !isShowDetailBalance;
    });
    print(isShowDetailBalance);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(29, 0, 0, 0),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 130,
                      height: 25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isShowDetailBalance
                            ? const Color.fromARGB(0, 175, 175, 175)
                            : const Color.fromARGB(255, 175, 175, 175),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        isShowDetailBalance ? "\$196557.23" : "",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        onClickEyeShowDetailBalanch();
                      },
                      child: Icon(
                        !isShowDetailBalance
                            ? Icons.visibility_off
                            : Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 33, 201, 243),
                      ),
                      child: const Text(
                        'Default',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "My Money",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.green,
                      size: 17,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Receive Money',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.red,
                      size: 17,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Receive Money',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
