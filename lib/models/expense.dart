import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { Food, Travel, Leisure, Work }

const catagoryIcons = {
  Category.Food: Icons.fastfood,
  Category.Travel: Icons.flight,
  Category.Leisure: Icons.sports_soccer,
  Category.Work: Icons.work,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.catoegory})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category catoegory;

  String get formattedDate {
    return formatter.format(date);
  }
}
