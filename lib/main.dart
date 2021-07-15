import 'package:flutter/material.dart';

import './widgets/user_transaction.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Planner'),
        ),
        body: Column(
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
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
