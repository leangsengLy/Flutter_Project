import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AbaSetting extends StatelessWidget {
  const AbaSetting({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: Image.asset(
                  'assets/images/1.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
              Positioned(
                top: 40,
                left: 10,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.close_rounded,
                          color: Colors.white,
                        )),
                    const SizedBox(width: 10),
                    Text(
                      "ABA",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "'",
                      style: GoogleFonts.inter(
                        color: Colors.red,
                        fontSize: 18,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " Settings",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 120,
                left: MediaQuery.of(context).size.width / 2.6,
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset("assets/images/1.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Leangseng Ly",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'App ID: 708330',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 44, 70),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 13),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(115, 107, 107, 107),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.lock,
                              size: 17,
                              color: Colors.white,
                            ),
                            SizedBox(width: 6),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Protext ABA Mobile with 6-digit PIN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Choose a 6-digit PIN option for superior protextion and peace of mind.",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 43,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 176, 245),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Text(
                            "LEARN MORE",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
