import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PickDate extends StatefulWidget {
  @override
  _PickDateState createState() => _PickDateState();
}

class _PickDateState extends State<PickDate> {
  DateTime _selectedDate = DateTime.now();
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Date'),
      ),
      body: TextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: 'Date',
          suffix: IconButton(
            icon: Icon(Icons.date_range),
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: _selectedDate,
                firstDate: DateTime.now().subtract(Duration(days: 30)),
                lastDate: DateTime.now().add(Duration(days: 30)),
              ).then((selectedDate) {
                if (selectedDate != null) {
                  _selectedDate = selectedDate;
                  _controller.text = DateFormat.yMd().format(_selectedDate);
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
