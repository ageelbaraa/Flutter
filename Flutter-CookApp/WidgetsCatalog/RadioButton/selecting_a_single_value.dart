import 'package:flutter/material.dart';

class FruitChooser extends StatefulWidget {
  @override
  _FruitChooserState createState() => _FruitChooserState();
}

class _FruitChooserState extends State<FruitChooser> {
  Fruit _selectedFruit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: Fruit.allFruits.map((fruit) {
            return Row(
              children: <Widget>[
                Radio<Fruit>(
                  value: fruit,
                  groupValue: _selectedFruit,
                  onChanged: (value) {
                    setState(() {
                      _selectedFruit = value;
                    });
                  },
                ),
                Expanded(
                  child: Text(fruit.name),
                ),
              ],
            );
          }).toList(),
        ),
        Text(_selectedFruit != null ? _selectedFruit.name : '')
      ],
    );
  }
}

class Fruit {
  String name;

  Fruit({this.name});

  static List get allFruits => [
        Fruit(name: 'Apple'),
        Fruit(name: 'Orange'),
        Fruit(name: 'Banana'),
        Fruit(name: 'Strawberries')
      ];
}
