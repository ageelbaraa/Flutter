import 'package:flutter/material.dart';

class SwitchInListTile extends StatefulWidget {
  @override
  _SwitchInListTileState createState() => _SwitchInListTileState();
}

class _SwitchInListTileState extends State<SwitchInListTile> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Switch ListTile Widget'),
        ),
        body: Center(
            child: Column(children: [
          SwitchListTile(
            title: Text('Switch'),
            subtitle: Text('Description'),
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          )
        ])));
  }
}
