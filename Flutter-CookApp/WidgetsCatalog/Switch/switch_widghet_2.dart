import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchWidgetTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Column(
        children: [
          CupertinoSwitch(
            value: true,
            onChanged: (value) => {},
            activeColor: Colors.red.shade300,
          ),
          Switch.adaptive(
            value: true,
            onChanged: (value) => {},
          )
        ],
      ),
    );
  }
}
