import 'dart:ffi';

import 'package:aba_app/models/payment.dart';
import 'package:aba_app/widget/payment/payment_card.dart';
import 'package:flutter/material.dart';

class PaymentDetailScreen extends StatelessWidget {
  const PaymentDetailScreen({super.key, required this.payment});
  final Payment payment;
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
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            payment.label,
                            style: const TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            width: 250,
                            child: Text(
                              payment.detail,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
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
                        duration: const Duration(seconds: 1),
                        child: Icon(
                          payment.icon,
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
              child: payment.paymentDetails.isNotEmpty
                  ? SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          ...payment.paymentDetails.map((val) => Column(
                                children: [
                                  PaymentCard(
                                    isPayment: false,
                                    paymentDetail: val,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ))
                        ],
                      ))
                  : Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              payment.icon,
                              size: 100,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 20),
                            Center(
                              child: Column(
                                children: [
                                  const Text(
                                    "No available ",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "${payment.label}!",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
