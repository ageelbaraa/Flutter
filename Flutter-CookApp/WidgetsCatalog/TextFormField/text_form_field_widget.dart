import 'package:flutter/material.dart';

class NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormField'),
      ),
      body: TextFormField(
        decoration: InputDecoration(
          labelText: 'Name',
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Name is required.';
          } else if (value.length < 6) {
            return 'Minimum length is 6.';
          } else {
            return null;
          }
        },
        autovalidate: true,
      ),
    );
  }
}
