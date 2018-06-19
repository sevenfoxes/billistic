import 'package:billistic/models/app_state.dart';
import 'package:billistic/reducers/counter_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    isLoading: false,
    count: counterReducer(state.count, action),
  );
}
