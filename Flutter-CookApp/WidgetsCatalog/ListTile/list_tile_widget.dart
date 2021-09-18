import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile Widget'),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text('Title 1'),
              subtitle: Text('Description 1'),
              leading: Icon(Icons.shop),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              title: Text('Title 2'),
              subtitle: Text('Description 2'),
              leading: Icon(Icons.shop),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              title: Text('Title 3'),
              subtitle: Text('Description 3'),
              leading: Icon(Icons.shop),
              trailing: Icon(Icons.arrow_right),
            )
          ],
        ),
      ),
    );
  }
}
