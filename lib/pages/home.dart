import 'package:flutter/material.dart';

import 'package:billistic/containers/counter/counter.dart';
import 'package:billistic/containers/counter/increase_counters.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  HomeScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('You have pushed the button'),
              new Counter(),
            ],
          ),
        ),
      ),
      floatingActionButton: new IncreaseCountButton(),
    );
  }
}
