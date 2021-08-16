import 'package:flutter/material.dart';

class ListViewWithItemSeparated extends StatefulWidget {
  @override
  _ListViewWithItemSeparatedState createState() =>
      _ListViewWithItemSeparatedState();
}

class _ListViewWithItemSeparatedState extends State<ListViewWithItemSeparated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView with Item Separated'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ExampleWidget(name: 'Separated Box ${index + 1}');
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 8,
            );
          },
          itemCount: 20,
        ));
  }
}

class ExampleWidget extends StatelessWidget {
  ExampleWidget({this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
    );
  }
}
