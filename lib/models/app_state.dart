import 'package:billistic/models/models.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final bool isLoading;
  final List<Expense> expenses;

  AppState({
    this.isLoading = false,
    this.expenses = const [],
  });

  AppState copyWith({bool isLoading, List<Expense> expenses}) => new AppState(
      isLoading: isLoading ?? this.isLoading,
      expenses: expenses ?? this.expenses);
}
