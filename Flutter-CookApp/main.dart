import 'package:flutter/material.dart';

import 'WidgetsCatalog/ListView/list_view_with_item_builders.dart';
import 'WidgetsCatalog/ListView/list_view_with_item_separated.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ListViewWithItemBuilders());
  }
}
