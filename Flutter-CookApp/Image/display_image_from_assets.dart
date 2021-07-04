import 'package:flutter/material.dart';

class PPAssetsImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          width: 400,
          height: 300,
          child: Image.asset(
            'images/img_1.jpg',
            alignment: Alignment.topLeft,
            repeat: ImageRepeat.repeat,
          ),
        ),
      ),
    );
  }
}
