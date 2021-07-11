import 'package:flutter/material.dart';
import 'WidgetsCatalog/RichText/rich_text_widget.dart';
import 'WidgetsCatalog/Text/text_style.dart';

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
          body: TextStyleWidget(),
        ));
  }
}
