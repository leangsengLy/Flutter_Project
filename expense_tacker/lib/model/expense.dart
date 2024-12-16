import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final Formatter = DateFormat.yMd();
final uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.category,
      required this.date})
      : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  String get formmatedDate {
    return Formatter.format(date);
  }
}

class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.epenses,
  });
  ExpenseBucket.forCategory(List<Expense> allExpense, this.category)
      : epenses = allExpense.where((val) => val.category == category).toList();
  final Category category;
  final List<Expense> epenses;
  double get totalExpense {
    double sum = 0;
    for (final item in epenses) {
      sum += item.amount;
    }
    return sum;
  }
}
