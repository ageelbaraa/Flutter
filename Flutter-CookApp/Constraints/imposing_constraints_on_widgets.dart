import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PPConstraintsOnWidgets extends StatelessWidget {
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
                color: Colors.indigoAccent,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('SizedBox'),
                ),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(3),
                child: SizedBox.shrink(
                  child: Image.network('https://picsum.photos/100'),
                ),
              ),
              Container(
                color: Colors.red,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 50,
                    minHeight: 50,
                  ),
                  child: Text('ConstrainedBox'),
                ),
              ),
              Container(
                color: Colors.amber,
                padding: EdgeInsets.all(2),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 200,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 200,
                    ),
                    child: Image.network('https://picsum.photos/300'),
                  ),
                ),
              )
            ]),
      ],
    );
  }
}
