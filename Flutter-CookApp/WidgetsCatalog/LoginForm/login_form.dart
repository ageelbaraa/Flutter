import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormFieldState<String>> _usernameFormFieldKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _passwordFormFieldKey = GlobalKey();

  _notEmpty(String value) => value != null && value.isNotEmpty;

  get _value => ({
        'username': _usernameFormFieldKey.currentState?.value,
        'password': _passwordFormFieldKey.currentState?.value
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginForm'),
      ),
      body: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              key: _usernameFormFieldKey,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
              validator: (value) =>
                  !_notEmpty(value) ? 'Username is required' : null,
            ),
            TextFormField(
              key: _passwordFormFieldKey,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              validator: (value) =>
                  !_notEmpty(value) ? 'Password is required' : null,
            ),
            Builder(builder: (context) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Log In'),
                    onPressed: () {
                      if (Form.of(context).validate()) {
                        print(_value);
                      }
                    },
                  ),
                  FlatButton(
                    child: Text('Reset'),
                    onPressed: () => Form.of(context).reset(),
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
