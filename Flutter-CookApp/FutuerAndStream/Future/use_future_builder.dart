import 'dart:math';
import 'package:flutter/material.dart';

class FutureBuilderPage extends StatelessWidget {
  final Future<int> _future = Future.delayed(Duration(seconds: 1), () {
    if (Random().nextBool()) {
      return 1;
    } else {
      throw 'invalid value';
    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Builder'),
      ),
      body: Center(
        child: FutureBuilder(
          future: _future,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.hasData) {
              return Text('${snapshot.data}');
            } else if (snapshot.hasError) {
              return Text(
                '${snapshot.error}',
                style: TextStyle(color: Colors.red),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
