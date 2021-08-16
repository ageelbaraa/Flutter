import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PickTime extends StatefulWidget {
  @override
  _PickTimeState createState() => _PickTimeState();
}

class _PickTimeState extends State<PickTime> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pick Time'),
        ),
        body: TextField(
          controller: _controller,
          decoration: InputDecoration(
              labelText: 'Time',
              suffix: IconButton(
                icon: Icon(Icons.access_time),
                onPressed: () {
                  showTimePicker(
                    context: context,
                    initialTime: _selectedTime,
                  ).then((selectedTime) {
                    if (selectedTime != null) {
                      _selectedTime = selectedTime;
                      _controller.text = _selectedTime.format(context);
                    }
                  });
                },
              )),
        ));
  }
}
