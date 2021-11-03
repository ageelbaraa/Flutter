import 'package:flutter/material.dart';
import 'FutuerAndStream/Stream/use_stream_builder.dart';
import 'Navigation/srop_route_from_pop.dart';

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
        home: StreamBuilderPage());
  }
}
