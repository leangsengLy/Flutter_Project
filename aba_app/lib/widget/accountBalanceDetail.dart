import 'package:aba_app/screen/pin_to_login.dart';
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
  void onClickEyeShowDetailBalanch() async {
    if (isShowDetailBalance) {
      setState(() {
        isShowDetailBalance = false;
      });
    } else {
      final getIsOpenDetailMoney = await Navigator.of(context).push<bool>(
        MaterialPageRoute(
          builder: (ctx) => const PinToLogin(
            typeLogin: "money",
          ),
        ),
      );
      setState(() {
        isShowDetailBalance = getIsOpenDetailMoney!;
      });
    }
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
                      width: 140,
                      height: 25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: isShowDetailBalance
                          ? Text(
                              isShowDetailBalance ? "\$19,5327.236" : "",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "assets/images/blur.jpg",
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                                height: double.infinity,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Transform.rotate(
                      angle: 160,
                      child: const Icon(
                        Icons.outbond_outlined,
                        color: Colors.green,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
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
                    Transform.rotate(
                      angle: 320,
                      child: const Icon(
                        Icons.outbond_outlined,
                        color: Colors.red,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
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
