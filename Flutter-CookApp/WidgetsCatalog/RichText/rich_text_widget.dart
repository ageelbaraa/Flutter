import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: 'Level 1',
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: 'Level 2',
                style: TextStyle(fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'Level 3',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
