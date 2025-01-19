import 'package:aba_app/widget/AccountBalanceDetail.dart';
import 'package:aba_app/widget/advertisingImage.dart';
import 'package:aba_app/widget/cardAtivity.dart';
import 'package:aba_app/widget/serviceContent.dart';
import 'package:aba_app/widget/smallCardAtivity.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 61, 80),
        actions: const [
          Icon(Icons.messenger_outline),
          SizedBox(width: 10),
          Icon(Icons.notification_important_outlined),
          SizedBox(width: 10),
          Icon(Icons.qr_code_sharp),
          SizedBox(width: 30)
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 61, 80),
              Color.fromARGB(255, 10, 127, 163),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(2),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(300),
                      child: Image.asset(
                        'assets/images/1.jpg',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Leangseng!",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "View profile",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Accountbalancedetail(),
              const SizedBox(height: 13),
              Container(
                width: double.infinity,
                height: 370,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(29, 0, 0, 0),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    GridView(
                      controller: ScrollController(keepScrollOffset: false),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (2 / 1.6),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      children: const [
                        Cardativity(
                            icon: Icons.account_balance_wallet,
                            label: "Accounts"),
                        Cardativity(icon: Icons.payment, label: "Cards"),
                        Cardativity(
                            icon: Icons.qr_code_scanner, label: "ABA Scan"),
                        Cardativity(icon: Icons.stars, label: "Favorites"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SmallCardAtivity(icon: Icons.paid, label: "Payment"),
                          SizedBox(width: 10),
                          SmallCardAtivity(
                              icon: Icons.pivot_table_chart,
                              label: "Navigator"),
                          SizedBox(width: 10),
                          SmallCardAtivity(
                              icon: Icons.manage_accounts,
                              label: "Mange Account"),
                          SizedBox(width: 10),
                          SmallCardAtivity(
                              icon: Icons.fingerprint, label: "Finger print"),
                          SizedBox(width: 10),
                          SmallCardAtivity(icon: Icons.paid, label: "Payment"),
                          SizedBox(width: 10),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Advertisingimage(),
              const SizedBox(height: 20),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Explore Services",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "VIEW ALL",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.navigate_next_outlined,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(18),
                    height: 135,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(29, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          //Box Server
                          ServiceContent(
                            image: "assets/images/legend.jpg",
                            lable: "Live. By",
                          ),
                          SizedBox(width: 14),
                          ServiceContent(
                            image: "assets/images/movie.jpg",
                            lable: "Cinema",
                          ),
                          SizedBox(width: 14),
                          ServiceContent(
                            image: "assets/images/metfone.jpg",
                            lable: "Metfone",
                          ),
                          SizedBox(width: 14),
                          ServiceContent(
                            image: "assets/images/caption.jpg",
                            lable: "Cinema",
                          ),
                          SizedBox(width: 14),
                          ServiceContent(
                            image: "assets/images/smart.png",
                            lable: "Metfone",
                          ),
                          SizedBox(width: 14),
                          ServiceContent(
                            image: "assets/images/live.jpg",
                            lable: "Cinema",
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
