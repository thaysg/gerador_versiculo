import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  final AssetImage picture;

  const MyImage({this.picture});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 32,
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Image(
            image: picture,
          ),
        ),
      ),
    );
  }
}
