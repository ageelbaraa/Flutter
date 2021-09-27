import 'package:flutter/material.dart';

class VerticalAlignmentTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Widget'),
      ),
      body: Table(
        border: TableBorder.all(color: Colors.green.shade200),
        defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
        children: [
          TableRow(children: [
            TextCell('A'),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Text('B'),
            ),
            Text('C'),
            Text('D'),
          ]),
          TableRow(children: [Text('E'), Text('F'), Text('G'), Text('H')]),
          TableRow(children: [Text('I'), Text('J'), Text('K'), Text('L')]),
        ],
      ),
    );
  }
}

class TextCell extends StatelessWidget {
  TextCell(this.text, {this.height = 50});

  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
      ),
      child: Text(text),
    );
  }
}
