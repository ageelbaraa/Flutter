import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Decoration',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.dashed,
          ),
        )
      ],
    );
  }
}
