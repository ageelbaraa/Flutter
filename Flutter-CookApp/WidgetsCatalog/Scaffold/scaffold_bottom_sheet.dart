import 'package:flutter/material.dart';

class ScaffoldBottomSheetWidget extends StatefulWidget {
  @override
  _ScaffoldBottomSheetWidgetState createState() =>
      _ScaffoldBottomSheetWidgetState();
}

class _ScaffoldBottomSheetWidgetState extends State<ScaffoldBottomSheetWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Widget - Title'),
      ),
      body: Center(
        child: Text('Scaffold Widget - Body'),
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            color: Colors.grey,
            height: 120,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.photo),
                      Text('Photo'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.camera),
                      Text('Camera'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.videocam),
                      Text('Video'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
