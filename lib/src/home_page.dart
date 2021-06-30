import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Modelos de UI'),
      ),
      backgroundColor: Color(0xffdac8a3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeButton(
              color: Colors.green,
              route: '/basicDesign',
              text: 'Diseño Basico',
            ),
            HomeButton(
              color: Colors.blue,
              route: '/intermediateDesign',
              text: 'Diseño Intermedio',
            ),
            HomeButton(
              color: Colors.red,
              route: '/advancedDesgin',
              text: 'Diseño Avanzado',
            ),
          ],
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  final String route;
  final String text;
  final Color color;

  const HomeButton(
      {@required this.route, @required this.text, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
          color: this.color, borderRadius: BorderRadius.circular(20)),
      child: TextButton(
          onPressed: () => Navigator.pushNamed(context, this.route),
          child: Text(
            this.text,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
