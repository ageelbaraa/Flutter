import 'package:flutter/material.dart';
import 'UnderstandingStateless/understanding_stateless.dart';

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
            title: Text('Understanding Stateless'),
          ),
          body: HelloWorld(),
        ));
  }
}
