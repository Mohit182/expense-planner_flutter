import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Planner'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.green,
              elevation: 10,
              margin: EdgeInsets.all(100.0),
              child: Container(
                child: Text(
                  'Chart!',
                  textAlign: TextAlign.center,
                  textScaleFactor: 2,
                ),
                width: double.infinity,
              ),
            ),
            Card(
              child: Container(
                child: Text(
                  'List of txn!',
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                ),
                width: double.infinity,
              ),
              color: Colors.yellowAccent,
            ),
          ],
        ),
      ),
    );
  }
}
