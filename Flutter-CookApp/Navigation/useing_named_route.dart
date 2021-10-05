import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogInPage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Sign Out'),
          onPressed: () {
            Navigator.pushNamed(context, '/sign_up');
          },
        ),
      ),
    );
  }
}

class SignOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUpPage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Sign In'),
          onPressed: () {
            Navigator.pushNamed(context, '/log_in');
          },
        ),
      ),
    );
  }
}

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexPage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Sign In'),
          onPressed: () {
            Navigator.pushNamed(context, '/log_in');
          },
        ),
      ),
    );
  }
}
