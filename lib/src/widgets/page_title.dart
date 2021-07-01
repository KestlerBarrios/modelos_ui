import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final _textStyle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify Transaction',
              style: _textStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Classify this Transaction into a \nparticular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
