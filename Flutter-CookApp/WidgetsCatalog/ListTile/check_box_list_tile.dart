import 'package:flutter/material.dart';

class CheckboxInListTile extends StatefulWidget {
  @override
  _CheckboxInListTileState createState() => _CheckboxInListTileState();
}

class _CheckboxInListTileState extends State<CheckboxInListTile> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListTile Widget'),
        ),
        body: Center(
            child: Column(children: [
          CheckboxListTile(
            title: Text('Checkbox'),
            subtitle: Text('Description'),
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            secondary: Icon(_value ? Icons.monetization_on : Icons.money_off),
          )
        ])));
  }
}
