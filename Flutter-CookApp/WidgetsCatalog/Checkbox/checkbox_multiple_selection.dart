import 'package:flutter/material.dart';

class FruitSelector extends StatefulWidget {
  @override
  _FruitSelectorState createState() => _FruitSelectorState();
}

class _FruitSelectorState extends State<FruitSelector> {
  List<Fruit> _selectedFruits = List();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: Fruit.allFruits.map((fruit) {
            return Row(
              children: <Widget>[
                Checkbox(
                  value: _selectedFruits.contains(fruit),
                  onChanged: (selected) {
                    setState(() {
                      if (selected) {
                        _selectedFruits.add(fruit);
                      } else {
                        _selectedFruits.remove(fruit);
                      }
                    });
                  },
                ),
                Expanded(
                  child: Text(fruit.name),
                )
              ],
            );
          }).toList(),
        ),
        Text(_selectedFruits.join(', ')),
      ],
    );
  }
}

class Fruit {
  int id;
  String name;
  Fruit({this.id,this.name});

  String get getName => name;
  int get getId => id;

  static List get allFruits => [
    Fruit(id: 1,name: 'Apple'),
    Fruit(id: 2,name: 'Orange'),
    Fruit(id: 3,name: 'Banana'),
    Fruit(id: 4,name: 'Strawberries')
  ];
}