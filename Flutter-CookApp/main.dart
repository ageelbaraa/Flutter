import 'package:flutter/material.dart';
import 'WidgetsCatalog/Buttons/using_buttons_with_Icon.dart';
import 'WidgetsCatalog/Placeholders/placeholder_widget.dart';

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
        home: Scaffold(
          appBar: AppBar(
            title: Text('SDK Flutter Course'),
          ),
          body: PlaceHolderWidget(),
        ));
  }
}
