import 'package:billistic/models/models.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final bool isLoading;
  final List<Expense> expenses;

  const AppState({@required this.expenses, this.isLoading});

  AppState.initialState()
      : expenses = <Expense>[],
        isLoading = true;
}
