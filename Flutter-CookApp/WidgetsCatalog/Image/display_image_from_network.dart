import 'package:flutter/material.dart';

class PPNetworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          width: 400,
          height: 300,
          child: Image.network(
            'https://picsum.photos/300/200',
            alignment: Alignment.topLeft,
            repeat: ImageRepeat.repeat,
          ),
        ),
      ),
    );
  }
}
