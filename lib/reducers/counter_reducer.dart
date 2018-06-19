import 'package:billistic/actions/counter_actions.dart';

int counterReducer(int currentCount, action) {
  if (action is IncrementCountAction) {
    currentCount++;
  } else if (action is DecrementCountAction) {
    currentCount--;
  }
  return currentCount;
}
