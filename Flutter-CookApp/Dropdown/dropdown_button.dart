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
        DropdownButton(
          value: _selectedFruit,
          items: Fruit.allFruits.map((fruit) {
            return DropdownMenuItem(
                value: fruit.getId,
                child: Text(fruit.getName),
            );
          }).toList(),
          onChanged: (fruit) {
            setState(() {
              _selectedFruit = fruit;
            });
          },
          hint: Text('Select a fruit'),
        ),
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
