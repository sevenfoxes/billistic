import 'package:flutter/foundation.dart';
import 'package:billistic/models/models.dart';

abstract class ExpenseAction {
  String toString() {
    return '$runtimeType';
  }
}

class LoadExpensesAction extends ExpenseAction {
  static int _id = 0;
  final List<Expense> expenses;

  LoadExpensesAction({@required this.expenses}) {
    _id++;
  }

  int get id => _id;
}

// class ExpensesLoadedAction {
//   final List<Expense> expenses;

//   ExpensesLoadedAction(this.expenses);
// }
