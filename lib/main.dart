import 'package:flutter/material.dart';
import 'package:modelos_ui/src/home_page.dart';
import 'package:modelos_ui/src/screens/advanced_design.dart';
import 'package:modelos_ui/src/screens/basic_design.dart';
import 'package:modelos_ui/src/screens/intermediate_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños de UI',
      home: HomePage(),
      initialRoute: '/',
      routes: {
        '/basicDesign': (_) => BasicDesign(),
        '/intermediateDesign': (BuildContext context) => IntermediateDesign(),
        '/advancedDesgin': (BuildContext context) => AdvancedDesign(),
      },
    );
  }
}
