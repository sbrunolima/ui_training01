import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  bool selectedColor;

  MyIconButton(this.icon, this.selectedColor);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
      color: selectedColor ? Colors.teal.shade300 : Colors.grey,
      iconSize: 30,
    );
  }
}
