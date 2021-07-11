import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('$value'),
        RaisedButton(
          child: Text('+'),
          onPressed: () {
            setState(() {
              value++;
            });
          },
        ),
      ],
    );
  }
}
