import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shopping/data/categories.dart';
import 'package:shopping/models/grocery_item.dart';
import 'package:shopping/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});
  @override
  State<GroceryList> createState() {
    return GroceryListState();
  }
}

class GroceryListState extends State<GroceryList> {
  List<GroceryItem> _groceryItems = [];
  String? error;
  var isLoading = false;
  @override
  void initState() {
    super.initState();
    isLoading = true;
    loadData();
    print("get data");
  }

  void loadData() async {
    final url = Uri.https(
      'asdf-api-69d50-default-rtdb.firebaseio.com',
      'shopping-list.json',
    );
    final response = await http.get(url);
    print(response.body);
    if (response.statusCode > 400) {
      setState(() {
        error = "Failed to fetch data. Please try again later";
      });
    }
    isLoading = false;
    final Map<String, dynamic> listData = json.decode(response.body);
    final List<GroceryItem> loadingItems = [];
    for (final item in listData.entries) {
      final cateory = categories.entries
          .firstWhere((val) => val.value.title == item.value['category'])
          .value;
      loadingItems.add(
        GroceryItem(
          id: item.key,
          name: item.value['name'],
          quantity: item.value['quantity'],
          category: cateory,
        ),
      );
    }
    setState(() {
      _groceryItems = loadingItems;
    });
  }

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ),
    );
    // loadData();
    if (newItem == null) return;
    setState(() {
      _groceryItems.add(newItem);
    });
  }

  void removeItem(GroceryItem item) {
    setState(() {
      _groceryItems.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Text('You got no items yet?'),
    );
    if (_groceryItems.isNotEmpty) {
      content = ListView.builder(
        itemCount: _groceryItems.length,
        itemBuilder: (context, index) => Dismissible(
          onDismissed: (direction) {
            removeItem(_groceryItems[index]);
          },
          key: Key(_groceryItems[index].name),
          child: ListTile(
            title: Text(_groceryItems[index].name),
            leading: Container(
              width: 24,
              height: 24,
              color: _groceryItems[index].category.color,
            ),
            trailing: Text(_groceryItems[index].quantity.toString()),
          ),
        ),
      );
    }
    if (isLoading) {
      content = const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (error != null) {
      content = Center(
        child: Text(error!),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Gercery"),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: content,
    );
  }
}
