import 'package:billistic/actions/actions.dart';
import 'package:billistic/models/models.dart';

List<Expense> expensesReducer(List<Expense> state, ExpenseAction action) {
  if (action is LoadExpensesAction) {
    return <Expense>[]..addAll(state);
  }

  return state;
}
