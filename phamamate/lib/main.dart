import 'package:flutter/material.dart';
import 'package:phamamate/card_product.dart';
import 'package:phamamate/category_icon.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text('Phamacy mate'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_add_sharp,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: const Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded),
                border: OutlineInputBorder(),
                hintText: 'Input some infomation',
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Show All',
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 156, 255),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryIcon('Care'),
                    SizedBox(
                      width: 13,
                    ),
                    CategoryIcon('Heart'),
                    SizedBox(
                      width: 13,
                    ),
                    CategoryIcon('Brain'),
                    SizedBox(
                      width: 13,
                    ),
                    CategoryIcon('Stomach'),
                    SizedBox(
                      width: 13,
                    ),
                    CategoryIcon('Lung'),
                    SizedBox(
                      width: 13,
                    ),
                    CategoryIcon('Heart'),
                    SizedBox(
                      width: 13,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Show All',
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 156, 255),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CardProduct(),
                        SizedBox(
                          width: 20,
                        ),
                        CardProduct(),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CardProduct(),
                        SizedBox(
                          width: 20,
                        ),
                        CardProduct(),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CardProduct(),
                        SizedBox(
                          width: 20,
                        ),
                        CardProduct(),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  ));
}
