import 'package:flutter/material.dart';

class TextSelectionExample extends StatefulWidget {
  @override
  _TextSelectionExampleState createState() => _TextSelectionExampleState();
}

class _TextSelectionExampleState extends State<TextSelectionExample> {
  TextEditingController _controller;
  String _selection;

  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController();
    _controller.addListener(_handleTextSelection);
  }

  @override
  void dispose() {
    _controller.removeListener(_handleTextSelection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          controller: _controller,
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              child: Text('Select text [0, 5]'),
              onPressed: () {
                setState(() {
                  _controller.selection =
                      TextSelection(baseOffset: 0, extentOffset: 5);
                });
              },
            ),
            RaisedButton(
              child: Text('Move cursor to offset 1'),
              onPressed: () {
                setState(() {
                  _controller.selection = TextSelection.collapsed(offset: 1);
                });
              },
            ),
          ],
        ),
        Text.rich(TextSpan(
          children: [
            TextSpan(
              text: 'Selected:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: _selection ?? ''),
          ],
        )),
      ],
    );
  }

  _handleTextSelection() {
    TextSelection selection = _controller.selection;
    if (selection != null) {
      setState(() {
        _selection = selection.textInside(_controller.text);
      });
    }
  }
}
