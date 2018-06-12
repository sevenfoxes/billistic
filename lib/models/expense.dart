import 'package:meta/meta.dart';

@immutable
class Expense {
  final double amount;
  final int day;
  final name;
  final payState;

  const Expense(
      {@required this.amount,
      @required this.day,
      @required this.name,
      this.payState = 'unpaid'});

  Expense copyWith({double amount, int day, String name, String payState}) {
    return new Expense(
      amount: amount ?? this.amount,
      day: day ?? this.day,
      name: name ?? this.name,
      payState: payState ?? this.payState,
    );
  }
}

class ExpenseState {
  final List<Expense> expenses;

  const ExpenseState({@required this.expenses});

  ExpenseState.initialState() : expenses = <Expense>[];
}
