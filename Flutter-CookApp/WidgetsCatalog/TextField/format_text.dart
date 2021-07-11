import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PPTextFormatExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        inputFormatters: [
          TextInputFormatter.withFunction((oldValue, newValue) {
            return newValue.copyWith(text: newValue.text?.
            toUpperCase());
          }),
        ],
      ),
    );
  }
}
