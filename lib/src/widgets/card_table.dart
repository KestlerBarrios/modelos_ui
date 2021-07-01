import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            text: 'General',
            icon: Icons.settings,
          ),
          _SingleCard(
            color: Colors.purple[300],
            text: 'Transport',
            icon: Icons.local_shipping,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.pink,
            text: 'Shopping',
            icon: Icons.shopping_bag_outlined,
          ),
          _SingleCard(
            color: Colors.orange,
            text: 'Bills',
            icon: Icons.view_headline_rounded,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.blue[800],
            text: 'Entertaiment',
            icon: Icons.movie,
          ),
          _SingleCard(
            color: Colors.green,
            text: 'Grocery',
            icon: Icons.fastfood_rounded,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;

  const _SingleCard({
    @required this.color,
    @required this.text,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(
                    this.icon,
                    color: Colors.white,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  this.text,
                  style: TextStyle(color: this.color),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
