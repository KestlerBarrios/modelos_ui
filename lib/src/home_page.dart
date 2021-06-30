import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Modelos de UI'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => Navigator.pushNamed(context, '/basicDesign'),
                child: Text('Diseño Basico')),
            TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/intermediateDesign'),
                child: Text('Diseño Intermedio')),
            TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/advancedDesgin'),
                child: Text('Diseño Avanzado')),
          ],
        ),
      ),
    );
  }
}
