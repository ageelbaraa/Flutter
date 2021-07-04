import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PPImposingNoConstraintsOnWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.deepOrange,
                child: SizedBox(
                  width: 200,
                  height: 300,child: UnconstrainedBox(
                  constrainedAxis: Axis.horizontal,
                  child: Image.network('https://picsum.photos/200/300'),
                ),
                ),
              )
            ]),
      ],
    );
  }
}
