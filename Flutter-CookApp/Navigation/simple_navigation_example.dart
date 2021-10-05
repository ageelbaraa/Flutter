import 'package:flutter/material.dart';

class SimpleNavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Navigation'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show page'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  title: Text('New Page'),
                ),
                body: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('A new page'),
                      RaisedButton(
                        child: Text('Go back'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}
