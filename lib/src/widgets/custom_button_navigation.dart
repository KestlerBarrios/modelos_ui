import 'package:flutter/material.dart';

class CustomButtomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), label: 'Calendario'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined), label: 'Gráfica'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
      ],
    );
  }
}
