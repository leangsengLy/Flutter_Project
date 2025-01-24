import 'package:aba_app/widget/payment/payment_card.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 44, 70),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        title: const Text(
          "ABA' Payments",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 28,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 44, 70),
                ),
                child: const Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Payments",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          SizedBox(
                            width: 250,
                            child: Text(
                              "Top-up phone, pay for utility bills and many other popular services free of charge.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -40,
                      right: -50,
                      child: AnimatedOpacity(
                        opacity: .3,
                        duration: Duration(seconds: 1),
                        child: Icon(
                          Icons.monetization_on_outlined,
                          color: Colors.white,
                          size: 160,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 35, 54),
              ),
              child: const SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    PaymentCard(
                      icon: Icons.bookmark,
                      color: Colors.black,
                      detail: "Pay bills from your favorites list",
                      label: "Choose from Favorites",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.phone_in_talk_outlined,
                      color: Color.fromARGB(255, 60, 166, 252),
                      label: "Mobile Top-up",
                      detail: "Supported operators",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.settings,
                      color: Color.fromARGB(255, 7, 107, 189),
                      label: "Utilities",
                      detail: "Pay for electricity, water and waste bills",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.apartment,
                      color: Color.fromARGB(255, 224, 90, 0),
                      label: "Government Services",
                      detail: "Pay for taxes or publis services",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.wifi,
                      color: Color.fromARGB(255, 0, 168, 36),
                      label: "Internet & TV",
                      detail: "Pay your internet and TV bills",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.home,
                      color: Color.fromARGB(255, 152, 0, 190),
                      label: "Real Estate",
                      detail: "Pay for property",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.rice_bowl_rounded,
                      color: Color.fromARGB(255, 247, 119, 0),
                      label: "Insurance",
                      detail: "Pay for insurence premiums",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.attach_money,
                      color: Color.fromARGB(255, 0, 117, 196),
                      label: "Finance & Investent",
                      detail: "Payment for 3rd party financial services",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.local_shipping,
                      color: Color.fromARGB(255, 0, 73, 168),
                      label: "Trading & Distribution",
                      detail: "Pay trading partners or distributors",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.school,
                      color: Color.fromARGB(255, 0, 168, 36),
                      label: "Education",
                      detail: "Pay for school fees",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.sports_esports,
                      color: Color.fromARGB(255, 0, 138, 218),
                      label: "Entertainment",
                      detail: "Shop for credit for games and apps",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.credit_card,
                      color: Color.fromARGB(255, 0, 73, 168),
                      label: "Membership & Subscription",
                      detail: "Pay for your subscription",
                    ),
                    SizedBox(height: 10),
                    PaymentCard(
                      icon: Icons.travel_explore_sharp,
                      color: Color.fromARGB(255, 156, 0, 204),
                      label: "Travel & Tours",
                      detail: "Pay to travel service-providers",
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
