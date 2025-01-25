import 'package:aba_app/models/payment_detail.dart';
import 'package:flutter/material.dart';

class Payment {
  const Payment({
    required this.label,
    required this.icon,
    required this.detail,
    required this.color,
    required this.paymentDetails,
  });
  final List<PaymentDetail> paymentDetails;
  final String label;
  final String detail;
  final IconData icon;
  final Color color;
}
