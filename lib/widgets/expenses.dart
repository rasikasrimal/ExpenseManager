import 'package:expense_manager/widgets/expenses-list/expenses_list.dart';
import 'package:expense_manager/models/expense.dart';
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
        title: 'Groceries',
        amount: 100.00,
        date: DateTime.now(),
        catoegory: Category.Food),
    Expense(
        title: 'Cinema',
        amount: 100.00,
        date: DateTime.now(),
        catoegory: Category.Leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text('The Chart'),
        Expanded(child: ExpenseList(expenses: _registeredExpenses))
      ]),
    );
  }
}
