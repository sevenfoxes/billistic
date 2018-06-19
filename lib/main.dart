// support
import 'package:flutter/material.dart';

// pages
import 'package:billistic/pages/home.dart';

// redux
import 'package:billistic/models/app_state.dart';
import 'package:billistic/reducers/app_reducer.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';

void main() => runApp(new Billistic());

class Billistic extends StatelessWidget {
  final String title = "Billistic";

  final store = new Store<AppState>(appReducer,
      initialState: new AppState(),
      middleware: [new LoggingMiddleware.printer()]);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new MaterialApp(
        title: title,
        home: new HomeScreen(title),
      ),
    );
  }
}
