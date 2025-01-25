import 'package:aba_app/models/payment.dart';
import 'package:aba_app/models/payment_detail.dart';
import 'package:aba_app/screen/payment_detail_screen.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
    this.payment,
    this.paymentDetail,
    this.isPayment = true,
  });
  final Payment? payment;
  final PaymentDetail? paymentDetail;
  final bool isPayment;
  void onSelectCard(BuildContext context, Payment payment) {
    if (isPayment) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => PaymentDetailScreen(
            payment: payment,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: () {
        if (isPayment) {
          onSelectCard(context, payment!);
        }
      },
      child: Container(
        width: double.infinity,
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(61, 141, 141, 141),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: isPayment
                      ? payment!.color
                      : const Color.fromARGB(255, 255, 255, 255),
                ),
                child: isPayment
                    ? Icon(
                        payment!.icon,
                        color: Colors.white,
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          paymentDetail!.srcImage,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
            ),
            const SizedBox(width: 13),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: isPayment
                  ? [
                      Text(
                        isPayment ? payment!.label : paymentDetail!.label,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        payment!.detail,
                        style: const TextStyle(
                          color: Color.fromARGB(169, 255, 255, 255),
                          fontSize: 12,
                        ),
                      )
                    ]
                  : [
                      Text(
                        isPayment ? payment!.label : paymentDetail!.label,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
            )
          ],
        ),
      ),
    );
  }
}
