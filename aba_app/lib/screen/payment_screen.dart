import 'package:aba_app/data/payment.dart';
import 'package:aba_app/screen/home_screen.dart';
import 'package:aba_app/widget/payment/payment_card.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});
  final listPayment = dataList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 44, 70),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push<bool>(
              MaterialPageRoute(
                builder: (ctx) => const HomeScreen(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ...listPayment
                        .map(
                          (val) => Column(
                            children: [
                              PaymentCard(
                                payment: val,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        )
                        .toList()
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
