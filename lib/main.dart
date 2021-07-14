import 'dart:math';

import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<transaction> transactions = [
    transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.69,
      date: DateTime.now(),
    ),
    transaction(
      id: 't2',
      title: 'Groceries',
      amount: 45.45,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Planner'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              color: Colors.green,
              elevation: 5,
              child: Container(
                child: Text(
                  'Chart!',
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.center,
                ),
                width: double.infinity,
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          tx.amount.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            tx.date.toString(),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            Card(
              child: Container(
                child: Text(
                  'List of txn!',
                  textScaleFactor: 1.5,
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
