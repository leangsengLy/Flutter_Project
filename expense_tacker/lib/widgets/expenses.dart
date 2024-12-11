import 'package:expense_tacker/widgets/expense_list/expenses_list.dart';
import 'package:expense_tacker/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Flutter Course',
      amount: 19.22,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Cenema',
      amount: 3.4,
      category: Category.leisure,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(
            child: ExpensesList(
              expense: _registeredExpenses,
            ),
          ),
        ],
      ),
    );
  }
}
