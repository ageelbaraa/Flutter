import 'package:flutter/material.dart';

class NameInput extends StatefulWidget {
  @override
  _NameInputState createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {
  bool _useCustomName = false;

  _buildNameInput() {
    return TextField(
      decoration: InputDecoration(labelText: 'Name'),
    );
  }

  _buildToggle() {
    return Row(
      children: <Widget>[
        Switch(
          value: _useCustomName,
          onChanged: (value) {
            setState(() {
              _useCustomName = value;
            });
          },
          activeColor: Colors.green,
          inactiveThumbColor: Colors.grey.shade200,
        ),
        Expanded(
          child: Text('Use custom name'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _useCustomName
          ? [_buildToggle(), _buildNameInput()]
          : [_buildToggle()],
    );
  }
}
