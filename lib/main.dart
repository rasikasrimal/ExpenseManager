import 'package:flutter/material.dart';
import 'package:expense_manager/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.red,
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.background,
            foregroundColor: kColorScheme.onBackground,
          )),
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
    ),
  );
}
