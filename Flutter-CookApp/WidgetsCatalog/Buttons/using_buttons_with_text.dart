import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PPFlutterButtonWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  child: Text('Flat'),
                  color: Colors.white,
                  textColor: Colors.grey,
                  highlightColor: Colors.red,
                  onPressed: () => {},
                ),
                SizedBox(height: 30,),
                RaisedButton(
                  child: Text('Raised'),
                  color: Colors.blue,
                  onPressed: () => {},
                ),
                SizedBox(height: 30,),

                OutlineButton(
                  child: Text('Outline'),
                  onPressed: () => {},
                ),
                SizedBox(height: 30,),

                CupertinoButton(
                  child: Text('Cupertino'),
                  color: Colors.green,
                  onPressed: () => {},
                ),
              ]),
        ],
      ),
    );
  }
}
