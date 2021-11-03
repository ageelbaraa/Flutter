import 'package:flutter/material.dart';

class VetoPopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Veto Pop'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text('click'),
            onPressed: () async {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) => Page2()
              // ));
              print('click');
              // ModalRoute.of(context).addScopedWillPopCallback(() async {
              //   bool result = await _showDialog(context);
              //   print(result);
              //   return result;
              // });
              _showBasicDialog(context);
            },
          ),
        ),
      ),
    );
  }

  Future<bool> _showDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Delete Appointment'),
            content: Text(
              'Are you sure? \nThis action cannot undo.',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20
              ),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.blue,
                child: Text(
                  'Yes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
              SizedBox(
                width: 50,
              ),
              FlatButton(
                color: Colors.red,
                child: Text(
                  'No',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context, false);
                },
              )
            ],
          );
        }
    );
  }
  _showBasicDialog(context){
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
  }

}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Page 2'),
    ),
    body:Center(
      child: Container(
        child: Text('sdfsdf'),
      ),
    )
    );
  }
}

