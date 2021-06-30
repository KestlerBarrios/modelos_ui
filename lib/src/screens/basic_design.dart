import 'package:flutter/material.dart';

class BasicDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/img/landscape.jpg')),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              'Cillum veniam nisi officia nostrud fugiat commodo. Consequat velit reprehenderit exercitation non aliquip sint adipisicing. Officia fugiat in sunt commodo quis consequat. Ullamco nulla dolor sint ullamco.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Paisaje Hermoso',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Paisaje de Europa', style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton(icon: Icons.call, title: 'Call'),
        CustomButton(icon: Icons.near_me_sharp, title: 'Route'),
        CustomButton(icon: Icons.share, title: 'Share'),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String title;

  CustomButton({@required this.icon, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
        ),
        Text(
          this.title,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
