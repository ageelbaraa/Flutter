import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Widget - Title'),
      ),
      body: Center(
        child: Text('Scaffold Widget - Body'),
      ),
    );
  }
}
