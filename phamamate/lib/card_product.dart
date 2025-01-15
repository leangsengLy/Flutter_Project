import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 270,
      padding: const EdgeInsets.all(10),
      color: const Color.fromARGB(255, 235, 235, 235),
      child: Column(
        children: [
          Image.asset('Images/lyzee.jpg'),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Mustlo',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Text(
                'Gentle shampoo',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '500ml',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('289'),
                  Text('289'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
