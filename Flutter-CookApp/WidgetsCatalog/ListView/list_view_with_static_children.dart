import 'package:flutter/material.dart';

class ListViewWithStaticChildren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with Static Children'),
      ),
      body: ListView(
        children: <Widget>[
          ExampleWidget(name: 'Box 1',iconData: Icons.looks_one,),
          ExampleWidget(name: 'Box 2',iconData: Icons.looks_two,),
          ExampleWidget(name: 'Box 3',iconData: Icons.looks_3,),
        ],
      ),
    );
  }
}


class ExampleWidget extends StatelessWidget {
  ExampleWidget({this.name,this.iconData});
  final String name;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: Icon(iconData),
    );
  }
}
