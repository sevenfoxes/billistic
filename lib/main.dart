import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:billistic/models/models.dart';
import 'package:billistic/reducers/reducers.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final store = new Store<AppState>(appReducer,
      initialState: new AppState.initialState());

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
        store: store,
        child: new MaterialApp(
          title: 'Flutter Demo',
          theme: new ThemeData(
            primarySwatch: Colors.green,
          ),
          home: new MyHomePage(title: 'Billistic'),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreBuilder(builder: (context, Store<AppState> store) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: store.state.expenses.map<Widget>((expense) {
                return new Text(expense.name);
              }).toList()),
        ),
      );
    });
  }
}
