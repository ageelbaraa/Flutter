import 'package:flutter/material.dart';
import 'package:flutter_topics_synic_with_ppt/WidgetsCatalog/Pick%20DateTime/pick_date.dart';
import 'package:flutter_topics_synic_with_ppt/WidgetsCatalog/Pick%20DateTime/pick_time.dart';
import 'WidgetsCatalog/Buttons/using_buttons_with_Icon.dart';
import 'WidgetsCatalog/Placeholders/placeholder_widget.dart';
import 'WidgetsCatalog/Switch/switch_widget.dart';

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
        home: PickTime()
        // Scaffold(
        //   appBar: AppBar(
        //     title: Text('SDK Flutter Course'),
        //   ),
        //   body: NameInput(),
        );
  }
}
