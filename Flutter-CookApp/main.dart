import 'package:flutter/material.dart';
import 'Navigation/navigation_main.dart';
import 'Navigation/pass_data_between_pages.dart';
import 'Navigation/simple_navigation_example.dart';

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
        home: UserDetailsPage());
  }
}
