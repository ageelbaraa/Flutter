import 'package:flutter/material.dart';

class ListViewWithItemBuilders extends StatefulWidget {
  @override
  _ListViewWithItemBuildersState createState() =>
      _ListViewWithItemBuildersState();
}

class _ListViewWithItemBuildersState
    extends State<ListViewWithItemBuilders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with Item Builders'),
      ),
      body: ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ExampleWidget(name: 'Dynamic Box ${index + 1}');
        },
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
