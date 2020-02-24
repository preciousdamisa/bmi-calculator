import 'package:flutter/material.dart';
import '../contants.dart';

class CardContent extends StatelessWidget {
  CardContent({@required this.icon, @required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: kCardLabelStyle,
        ),
      ],
    );
  }
}
