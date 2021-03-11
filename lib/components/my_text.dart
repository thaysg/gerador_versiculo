import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String title;

  const MyText({this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Container(
        margin: EdgeInsets.only(top: 32),
        width: MediaQuery.of(context).size.width * .6,
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
    );
  }
}
