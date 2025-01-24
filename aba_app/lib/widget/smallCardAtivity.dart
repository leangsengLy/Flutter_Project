import 'package:aba_app/screen/payment_screen.dart';
import 'package:aba_app/screen/pin_to_login.dart';
import 'package:flutter/material.dart';

class SmallCardAtivity extends StatelessWidget {
  const SmallCardAtivity({super.key, required this.label, required this.icon});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Widget? content = const PinToLogin();
        if (label.toLowerCase() == 'payment') content = const PaymentScreen();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx) => content!),
        );
      },
      child: Container(
        width: 150,
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
