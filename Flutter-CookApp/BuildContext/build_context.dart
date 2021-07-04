import 'package:flutter/material.dart';

class WithBuildContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column column = context.findAncestorWidgetOfExactType<Column>();
    return Text(column.children.length.toString());
  }
}
