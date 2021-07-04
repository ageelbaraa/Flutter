import 'package:flutter/material.dart';
import 'package:flutter_topics_synic_with_ppt/Dropdown/dropdown_button.dart';
import 'BuildContext/build_context.dart';
import 'Checkbox/checkbox_multiple_selection.dart';
import 'TextField/format_text.dart';

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
            title: Text('Radio Widget'),
          ),
          body: WithBuildContext(),
        ));
  }
}
