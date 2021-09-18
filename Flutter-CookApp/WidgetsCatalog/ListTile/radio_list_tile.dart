import 'package:flutter/material.dart';

enum CustomColor { red, green, blue }

class RadioInListTile extends StatefulWidget {
  @override
  _RadioInListTileState createState() => _RadioInListTileState();
}

class _RadioInListTileState extends State<RadioInListTile> {
  CustomColor _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListTile Widget'),
        ),
        body: Center(
            child: Column(children: [
          Column(
            children: CustomColor.values.map((color) {
              return RadioListTile<CustomColor>(
                title: Text(color.toString()),
                value: color,
                groupValue: _selectedColor,
                onChanged: (value) {
                  setState(() {
                    _selectedColor = value;
                  });
                },
              );
            }).toList(),
          )
        ])));
  }
}
