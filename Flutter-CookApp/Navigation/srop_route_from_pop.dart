import 'package:flutter/material.dart';

class VetoPopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context).addScopedWillPopCallback(() {
      return showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Exit?'),
            actions: <Widget>[
              FlatButton(
                child: Text('Yes'),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
              FlatButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.pop(context, false);
                },
              ),
            ],
          );
        },
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Veto Pop'),
      ),
      body: Container(),
    );
  }
}
