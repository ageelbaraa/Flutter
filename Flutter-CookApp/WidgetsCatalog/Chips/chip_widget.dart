import 'package:flutter/material.dart';

class FruitChooser extends StatefulWidget {
  @override
  _FruitChooserState createState() => _FruitChooserState();
}

class _FruitChooserState extends State<FruitChooser> {
  Fruit _selectedFruit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using Chips'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Wrap(
            spacing: 5,
            children: Fruit.allFruits.map((fruit) {
              return ChoiceChip(
                label: Text(fruit.name),
                selected: _selectedFruit == fruit,
                onSelected: (selected) {
                  setState(() {
                    _selectedFruit = selected ? fruit : null;
                  });
                },
                selectedColor: Colors.red.shade200,
              );
            }).toList(),
          ),
          Text(_selectedFruit != null ? _selectedFruit.name : '')
        ],
      ),
    );
  }
}

class Fruit {
  int id;
  String name;

  Fruit({this.id, this.name});

  String get getName => name;

  int get getId => id;

  static List get allFruits => [
        Fruit(id: 1, name: 'Apple'),
        Fruit(id: 2, name: 'Orange'),
        Fruit(id: 3, name: 'Banana'),
        Fruit(id: 4, name: 'Strawberries')
      ];
}
