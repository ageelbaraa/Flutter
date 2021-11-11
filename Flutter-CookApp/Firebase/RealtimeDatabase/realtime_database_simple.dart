import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class RealTimeDatabaseFirebaseFlutterSimpleExample extends StatefulWidget {
  @override
  _RealTimeDatabaseFirebaseFlutterSimpleExampleState createState() =>
      _RealTimeDatabaseFirebaseFlutterSimpleExampleState();
}

class _RealTimeDatabaseFirebaseFlutterSimpleExampleState
    extends State<RealTimeDatabaseFirebaseFlutterSimpleExample> {
  final fb = FirebaseDatabase.instance;
  final myController = TextEditingController();
  final name = "Name";

  @override
  Widget build(BuildContext context) {
    final ref = fb.reference();
    return Scaffold(
        appBar: AppBar(
          title: Text('RealTime Database Firebase Flutter - simple'),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(name),
                  SizedBox(width: 20),
                  Expanded(child: TextField(controller: myController)),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ref.child(name).set(myController.text);
              },
              child: Text("Submit"),
            ),
          ],
        )));
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
}
