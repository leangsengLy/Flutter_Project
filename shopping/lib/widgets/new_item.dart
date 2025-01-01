import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shopping/data/categories.dart';
import 'package:shopping/models/grocery_item.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});
  @override
  State<NewItem> createState() {
    return NewItemState();
  }
}

class NewItemState extends State<NewItem> {
  var _enterName = '';
  var isSending = false;
  var _enterQuantity = 1;
  var _selectCategory = categories[Categories.vegetables]!;
  final _formKey = GlobalKey<FormState>();
  void _saveItem() async {
    setState(() {
      isSending = true;
    });
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final url = Uri.https(
        'flutter-api-69d50-default-rtdb.firebaseio.com',
        'shopping-list.json',
      );
      final response = await http.post(
        url,
        headers: {'Conent-Type': 'application/json'},
        body: json.encode({
          'name': _enterName,
          'quantity': _enterQuantity,
          'category': _selectCategory.title,
        }),
      );
      print(response.statusCode);
      print(response.body);

      final Map<String, dynamic> resData = json.decode(response.body);
      if (!context.mounted) return;
      // Navigator.of(context).pop();
      Navigator.of(context).pop(
        GroceryItem(
          id: resData['name'],
          name: _enterName,
          quantity: _enterQuantity,
          category: _selectCategory,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a new item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  maxLength: 50,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    label: Text('Name'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.trim().length <= 1 ||
                        value.trim().length > 50 ||
                        value.isEmpty) {
                      return "Must be between 1 and 50 characters!";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _enterName = value!;
                  },
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TextFormField(
                        maxLength: 50,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          label: Text("Qunatity"),
                        ),
                        initialValue: "1",
                        validator: (value) {
                          if (value == null ||
                              int.tryParse(value) == null ||
                              int.tryParse(value)! <= 0 ||
                              value.isEmpty)
                            return "Must be a valid, positive number.";
                          return null;
                        },
                        onSaved: (value) {
                          _enterQuantity = int.parse(value!);
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: DropdownButtonFormField(
                        items: [
                          for (final item in categories.entries)
                            DropdownMenuItem(
                                value: item.value,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 16,
                                      color: item.value.color,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(item.value.title)
                                  ],
                                ))
                        ],
                        onChanged: (select) {
                          setState(() {
                            _selectCategory = select!;
                          });
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: isSending
                          ? null
                          : () {
                              _formKey.currentState!.reset();
                            },
                      child: const Text("reset"),
                    ),
                    ElevatedButton(
                      onPressed: isSending ? null : _saveItem,
                      child: isSending
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(),
                            )
                          : const Text("Add new item"),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
