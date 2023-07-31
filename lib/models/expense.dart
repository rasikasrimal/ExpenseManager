import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { Food, Travel, Leisure, Work }

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
}
