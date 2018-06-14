import 'package:billistic/models/models.dart';

import './expenses.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
      expenses: expensesReducer(state.expenses, action), isLoading: true);
}
