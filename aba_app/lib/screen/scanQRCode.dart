import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScanQRCode extends StatelessWidget {
  const ScanQRCode({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(0, 50, 30, 0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(248, 34, 34, 34),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ABA",
                      style: GoogleFonts.inter(
                        fontSize: 30,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "'",
                      style: GoogleFonts.inter(
                        fontSize: 30,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "QR",
                      style: GoogleFonts.inter(
                        fontSize: 30,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Use this QR to  recive money from friends or transfer funds from your other banking app",
                    style: TextStyle(
                      color: Color.fromARGB(197, 255, 255, 255),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 280,
                  height: 400,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/qr/1.png",
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 280,
                  height: 56,
                  clipBehavior: Clip.hardEdge,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(113, 48, 48, 48),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "ADD AMOUNT",
                        style: TextStyle(
                          color: Color.fromARGB(202, 33, 149, 243),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Receive to:",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "001 766 235 | USD",
                      style: TextStyle(
                        color: Color.fromARGB(202, 33, 149, 243),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color.fromARGB(202, 33, 149, 243),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(113, 48, 48, 48),
                              borderRadius: BorderRadius.circular(100)),
                          child: const Icon(
                            Icons.download,
                            color: Color.fromARGB(103, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          "Downlaod",
                          style: TextStyle(
                            color: Color.fromARGB(143, 255, 255, 255),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(113, 48, 48, 48),
                              borderRadius: BorderRadius.circular(100)),
                          child: const Icon(
                            Icons.fit_screen_sharp,
                            color: Color.fromARGB(103, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          "Screenshot",
                          style: TextStyle(
                            color: Color.fromARGB(143, 255, 255, 255),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(113, 48, 48, 48),
                              borderRadius: BorderRadius.circular(100)),
                          child: const Icon(
                            Icons.share,
                            color: Color.fromARGB(103, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          "Share Link",
                          style: TextStyle(
                            color: Color.fromARGB(143, 255, 255, 255),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
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
