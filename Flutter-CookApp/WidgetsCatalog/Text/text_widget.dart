import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hello World'),
        Text(
          'Bigger Bold Text',
          style: TextStyle(fontWeight: FontWeight.bold),
          textScaleFactor: 2.0,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, seddo eiusmod tempor incididunt',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
