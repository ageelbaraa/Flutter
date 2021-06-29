import 'package:flutter/material.dart';

class PPTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.elliptical(5, 10)),
              ),
            ),
          )
          ,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
                gapPadding: 2,
              ),
            ),
          )
          ,
        ),
      ],
    );
  }
}
