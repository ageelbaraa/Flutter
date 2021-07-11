import 'package:flutter/material.dart';


class PlaceHolderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Placeholder(
        color: Colors.blue,
        strokeWidth:5.0,
      ),
    );
  }
}
