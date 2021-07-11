import 'package:flutter/material.dart';
import 'package:flutter_topics_synic_with_ppt/WidgetsCatalog/Text/text_widget.dart';
import 'UnderstandingStatelessAndStateful/understanding_stateless.dart';
import 'WidgetsCatalog/TextSpan/text_span_widget.dart';

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
          body: TextSpanWidget(),
        ));
  }
}
