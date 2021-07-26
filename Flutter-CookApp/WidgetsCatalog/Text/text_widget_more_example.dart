import 'package:flutter/material.dart';

class TextExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text tutorial"),
        ),
        body: Text("Hi"));
  }
}

class TextExample2TextAlign1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Text(
        "Hi",
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TextExample2TextAlign2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Container(
        width: width,
        child: Text(
          "Hi",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class TextExample3FontSizeUsingTextScaleFactor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Container(
        width: width,
        child: Text(
          "Hi",
          textAlign: TextAlign.center,
          textScaleFactor: 4.0,
        ),
      ),
    );
  }
}

class TextExample4TextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Container(
        width: width,
        child: Text(
          "Hi",
          textAlign: TextAlign.center,
          textScaleFactor: 2.0,
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}

class TextExample5TextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Container(
        width: width,
        child: Column(
          children: [
            Text(
              "Hi",
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              "Hi",
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Hi",
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextExample6FontSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Container(
        width: width,
        child: Text(
          "Hi",
          textAlign: TextAlign.center,
          textScaleFactor: 2.0,
          style: TextStyle(color: Colors.blue, fontSize: 20.0),
        ),
      ),
    );
  }
}

class TextExample7SpaceBetweenLetters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Container(
        width: width,
        child: Text(
          "Hi There",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
            fontSize: 40.0,
            letterSpacing: 2.0,
            wordSpacing: 100.0,
          ),
        ),
      ),
    );
  }
}

class TextExample8TextFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Container(
        width: width,
        child: Column(
          children: [
            Text("Hi There",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20.0,
                    fontFamily: "Caveat",
                    fontWeight: FontWeight.w700)),
            Text(
              "This is regular",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40.0,
                  fontFamily: "Caveat",
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
