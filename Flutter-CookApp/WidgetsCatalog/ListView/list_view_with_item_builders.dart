import 'package:flutter/material.dart';

class ListViewWithStaticChildren extends StatefulWidget {
  @override
  _ListViewWithStaticChildrenState createState() =>
      _ListViewWithStaticChildrenState();
}

class _ListViewWithStaticChildrenState
    extends State<ListViewWithStaticChildren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with Item Builders'),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ExampleWidget(name: 'Dynamic Box ${index + 1}');
            },
          ),
          ListView.separated(
            itemBuilder: (context, index) {
              return ExampleWidget(name: 'Separated Box ${index + 1}');
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 8,
              );
            },
            itemCount: 20,
          )
        ],
      ),
    );
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
