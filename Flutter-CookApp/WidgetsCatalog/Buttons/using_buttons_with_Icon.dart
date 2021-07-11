import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.map),
                  iconSize: 50,
                  tooltip: 'Map',
                  onPressed: () => {},
                ),
                RaisedButton.icon(
                  icon: Icon(Icons.save),
                  label: Text('Save'),
                  onPressed: () => [],
                )
              ]),
        ],
      ),
    );
  }
}
