import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  final String title;

  const MyBody({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(32),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: ExactAssetImage(
            'images/paper.jpg',
          ),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.3,
            ),
          ),
        ),
      ),
    );
  }
}
