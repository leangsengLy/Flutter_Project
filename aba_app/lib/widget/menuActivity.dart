import 'package:aba_app/widget/cardAtivity.dart';
import 'package:aba_app/widget/smallCardAtivity.dart';
import 'package:flutter/material.dart';

class MenuActivity extends StatelessWidget {
  const MenuActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (2 / 1.6),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: const [
              Cardativity(
                  icon: Icons.account_balance_wallet, label: "Accounts"),
              Cardativity(icon: Icons.payment, label: "Cards"),
              Cardativity(icon: Icons.qr_code_scanner, label: "ABA Scan"),
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
                    icon: Icons.pivot_table_chart, label: "Navigator"),
                SizedBox(width: 10),
                SmallCardAtivity(
                    icon: Icons.manage_accounts, label: "Mange Account"),
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
    );
  }
}
