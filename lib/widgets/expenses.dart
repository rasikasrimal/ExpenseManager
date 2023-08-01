import 'package:expense_manager/widgets/expenses-list/expenses_list.dart';
import 'package:expense_manager/models/expense.dart';
import 'package:expense_manager/widgets/new_expense.dart';
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

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        context: context, builder: (ctx) => const NewExpense());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(children: [
        const Text('The Chart'),
        Expanded(child: ExpenseList(expenses: _registeredExpenses))
      ]),
    );
  }
}
