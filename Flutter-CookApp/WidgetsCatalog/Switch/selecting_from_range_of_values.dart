import 'package:flutter/material.dart';

class SliderValue extends StatefulWidget {
  SliderValue({Key key, this.divisions}) : super(key: key);
  final int divisions;

  @override
  _SliderValueState createState() => _SliderValueState(divisions);
}

class _SliderValueState extends State<SliderValue> {
  _SliderValueState(this.divisions);

  final int divisions;
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderValue'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Slider(
              value: _value,
              min: 0.0,
              max: 10.0,
              divisions: divisions,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
          Text(_value.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
